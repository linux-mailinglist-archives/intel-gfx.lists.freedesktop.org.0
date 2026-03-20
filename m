Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJGxG1B5vWkA+QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:44:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E9D2DDE12
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:44:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B45DE10EC09;
	Fri, 20 Mar 2026 16:43:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="16zynauu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E83F10EC09;
 Fri, 20 Mar 2026 16:43:57 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-02.galae.net (Postfix) with ESMTPS id 399B71A2F1D;
 Fri, 20 Mar 2026 16:43:56 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 09077600E0;
 Fri, 20 Mar 2026 16:43:56 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id D243110450CB5; Fri, 20 Mar 2026 17:43:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774025034; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=a3n5vw+rDIMQiLwiaCuuTlkkpK5uafDLslMZG+41CRQ=;
 b=16zynauuABPys0pqMhPSawKQXkY2A4j9NE56YqAFfewB46l7Eq0PSQoqO22+2j82fHcbL5
 aQyZA+xe1dSlVx07tbweMjLr9oH8P9xTHQ/Z61A3T3/6zSJIXw31IgGq9N1NOi1DEwdrtE
 NcEI3EHfiuMmGNkS17WOplrpZ3drcicO7HJYH2sIgT73+yOTjaeRTJlSFs0/gRUHnIkavX
 MLS7A7yx8XUQ4wDSex9+Yr4lUVYC4A7xZawA62TYtCu4XGbOZwG3SEjIAb2cSGA2EhwqFe
 OwIRIIFZpBMi6TCuR4qG05FMYrr7frtaWoHvLFVUAGYDsFBZbLkiXglJBlfmBg==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 65/65] drm_vblank: use dyndbg's static-key to avoid
 flag-check
From: Louis Chauvet <louis.chauvet@bootlin.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com, 
 gregkh@linuxfoundation.org
Cc: Jim Cromie <jim.cromie@gmail.com>, mripard@kernel.org, 
 tzimmermann@suse.de, maarten.lankhorst@linux.intel.com, 
 jani.nikula@intel.com, ville.syrjala@linux.intel.com, 
 christian.koenig@amd.com, matthew.auld@intel.com, 
 arunpravin.paneerselvam@amd.com, louis.chauvet@bootlin.com, 
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
In-Reply-To: <20260313132103.2529746-66-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-66-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491486.6181.8708643086354041969.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=624;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=p10Kv8NeHTDKVeqeVN7NQm9HSesgyb+B0sSXPicMRLE=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjc8KwPlWKu7gsoo5PcwPkMXzTLFkSOijp+D
 tv/3lOAJB+JAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab143BsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOKdhxAAwbAtpk6ueQX/rSWm8t4jVCvV/PFBvTN
 OCx7C/IfCLz8n+wmMSuovEnMBPCL8ddcycGWajInsmSA6WI3DwyCGWBZSTdaMHCyVnm6TIOoD2P
 wkhUpwNXWKA4vAXUR7hn4he8OHxMtZURiR9IdDonjTnNIBVVPC59+AQRhtebEcKmjLbpfbI0llH
 VgqiUsQAyk3Vg6m+8ZVMBpt6a0gDYGw/ky1+8gLvGkFOuz3MnurM1vKF1A1mkm2vjXeXwtORIeS
 KpFfxL8urNEOEsQNbEUy4edMrEmK2MC1J3QuWMt1W6Axv1/kA2TCia0m9krYfbkG7Lx/mFM9MwK
 9DgLhJgi7J/PYyW9BPiNQDVEV4W/bdwiYFwQQPxKe8f21bTGheBXh//2jb98EsweX/DWM6O682r
 PpDyW2ddLO6R+/SVwPruTqMcHvudkAxek6ywZzWISKdMe/2mgDE3Zv7VH2gbNSSlcsyxgNut1yq
 LDCtk8PvZl4AIsTDlsMbUIisZ5yBRvZbE/MAUThp5oKxC8hfB3TbfxRsRtUB2nTS4UC4gVgC/Jp
 sn/0nYx0CCYrVdB7y7gNg/3NGDGHycSNtLYp2LtE0RkhChCT+h0xx35wS9Uo137YurGSAIUBh+B
 Q+CkTZrfE2vakSSRIDNpf9BB+bXH04OfysqgYHSLGUMPVTvofgPM=
X-Developer-Key: i=louis.chauvet@bootlin.com; a=openpgp;
 fpr=8B7104AE9A272D6693F527F2EC1883F55E0B40A5
X-Last-TLS-Session-Version: TLSv1.3
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[louis.chauvet@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org,vger.kernel.org];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 41E9D2DDE12
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:20:30 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> drm_crtc_vblank_helper_get_vblank_timestamp_internal() is called about
> ~100 times per sec, on a single display. It currently calls
> drm_debug_enabled(DRM_UT_VBL) to avoid doing ktime_to_timespec64()
> conversions when the debug logging is disabled.
> 
> When CONFIG_DRM_USE_DYNAMIC_DEBUG=Y, the drm_debug_enabled() is
> redundant, because the following drm_dbg_vbl() already carries a
> static-key optimization.
> 
> [...]

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
