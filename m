Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLF+F9p4vWkA+QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 299DE2DDA3E
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DE4E10EB7B;
	Fri, 20 Mar 2026 16:42:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="N00QLdSd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B193210EB7B;
 Fri, 20 Mar 2026 16:41:54 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-03.galae.net (Postfix) with ESMTPS id 999CD4E4274C;
 Fri, 20 Mar 2026 16:41:53 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 6F72E600E0;
 Fri, 20 Mar 2026 16:41:53 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id CC19410450CB3; Fri, 20 Mar 2026 17:41:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774024912; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=eh77EuwoDIAn83QDMOVMLcEg6HxjeY8oda8hPWbgOus=;
 b=N00QLdSd5XpxjdMwdQdIaqp2FAzEjq22XCtYlIBiP4VPmDzw0D5bn2NHjDhKm4FmldPuqd
 L0gXIklwnT8JNBecTSFn39+Fmd7jjsAVieiKONugV3feaCKrPER5lxZ+LYgpeTFIJDxN1j
 HwvPlDmigPd3jLyElnTTIIFAx1I0DCrCuvKMHBfuSjKw9fIa2+mbiC5kyzM2k5M9hUlgz6
 1QTAQiUyWyQWJoTMZPFrdNSTP+X6y4lUqohiUGhjUfJBPbZDA87YYsdjuz7TWtNqAcKmjp
 6xlmrSJSsTEBQQFChEL7mvItopobDIRZnJU396Xmkj53l9zaENziY+Nn/Uxv9A==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 17/65] dyndbg: hoist classmap-filter-by-modname up
 to ddebug_add_module
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
In-Reply-To: <20260313132103.2529746-18-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-18-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491433.6181.524572822074430485.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=571;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=Z3OSfSV+JlcQP8oSdE9xs854dk0KsNRyeB4V0xIm+Lo=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjXe6hAK5x2nY1wm7oDb6qiRn1X+XrHRgAZ3
 afaQhwSkzmJAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab141xsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOLFwBAA1yyp58R7pkYB0lCMwhIjSCLXxjN1z+X
 bjE67YAXk0ORfVQWfC/JYCCTdSqq/+AYTLzFfULJOiJcXrN4SQ66i0khwyioqDKna+2ffilQKKo
 m53jV1EVn7HZNq1YUw0txNc+j8QkpkhE0lk5fdDT48CN1J++om+oYBKrQcyiBsearD2PFFI+eMI
 mSKpazZ+sVsXB2TyaN9rLsDm89cdmWX+zqaizxLx7Rjp+SsS5yASBpnFqoSHG6nYsrEgWUmHdm3
 00E0Aa5E6XiixMP2RAx8Fa7geUBz3T2haJCSUm0Xn65ZaI45d+d6h4x89aqyzXZ7DzdaJOvodu/
 RaZC22RCl+J73N7RqfuJH2JhVN0xAHFmFgnQ+h56fMQukQjlgZWRy5VTfel+luPOgaq8gt6qNRN
 /7NfnCt8XHMBNT5TMXNelayPuwUtpm3O0MbGeOH3gTCuKK2IJxvVwzx05+4z97OvGhxNJgc4bdr
 WS272vfr4NVmekFVulxtzb9KKdm1AlRzUnTwIyQAfBl77mhrwOiP78tOTDMk8yiXvWuFCv3q4Rj
 rCmhr58uqqUYO5RPBGSrJIVbAV+745WXr1slckV2GI/HL8QV7d9LiViEVgPA6LzQqJZ9LB98FL1
 /Jt4sMt8+ljydvzSkMNv5cFb62jGVpqLjCgc/dsSwG8rQ6u5H/j8=
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
X-Rspamd-Queue-Id: 299DE2DDA3E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:19:42 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> The body of ddebug_attach_module_classes() is dominated by a
> code-block that finds the contiguous subrange of classmaps matching on
> modname, and saves it into the ddebug_table's info record.
> 
> Implement this block in a macro to accommodate different component
> vectors in the "box" (as named in the for_subvec macro).  We will
> reuse this macro shortly.
> 
> [...]

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
