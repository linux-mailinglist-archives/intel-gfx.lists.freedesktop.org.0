Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDF1Nvd4vWkA+QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5132DDB54
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E172110EBA5;
	Fri, 20 Mar 2026 16:42:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="qOdbOsHK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F02F10EBA3;
 Fri, 20 Mar 2026 16:42:28 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-02.galae.net (Postfix) with ESMTPS id 618B11A2F12;
 Fri, 20 Mar 2026 16:42:27 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 36ED9600E0;
 Fri, 20 Mar 2026 16:42:27 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 6A5B910450CB2; Fri, 20 Mar 2026 17:42:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774024945; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=5Upo3hScNRXxfD8KfH+RzSygMfHGPA+CXsfw3S8Dwtw=;
 b=qOdbOsHKbUalYcoMJLG9W8ylvNpWSwXQF7LjJUVIyIgEa6rvaKTl9nkcR+3dVeYfNDe6Vl
 cx1Cd9KTbXx4P1bkcR8CAy+D8FoDK7Oix1hiPAFRhAA3eItd8nN/R0rmVABNuvxr4fPqDc
 V9R/K+2uLlipNZrfsF/m+LKHepmZKkPwosqAWfo+l2BIiT3MjVtZenoGq2Z7KIcH26GLX0
 fPzACSPQPvC/4wH7DWpZUqE2NZvg+qM4jWH4Zhqr//OA4X7CnfbdXO91Bf7ad1Q7J77z7R
 INFzXq/eZMFTayVnJeIqGReb7oiG+/Wgv8SwCexr4rxGqNvkIprVBmT0xMXlYQ==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 31/65] dyndbg: add
 DYNAMIC_DEBUG_CLASSMAP_USE_(dd_class_name, offset)
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
In-Reply-To: <20260313132103.2529746-32-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-32-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491451.6181.5247342952148189934.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1179;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=tNHRJNfsxbH6Lp1F09jvKXwBOTF5PEoW5rnafUEr6/c=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjYBrvAKr/WIcrVFbIsSIV6B7jPOf4kKz/EQ
 7fnAkaCD2yJAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab142BsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOL2Zw//chy8SGHsGdRzra1AMEAMpga41OVDHRz
 QSQI/98l1wQgvP4MCu2eKyIV97OnKGwtMi9WtVY8rb9y+yUWtKsugGY3ZBQTYEuXcoTEfmlfG9o
 HQvdNZmcXO9byGrgrwYK1X7C33njLoUswwpg3R/ixO+A3jKluBFE8MA4xs+qENTQLyE97zK3Pbf
 KBdZEqkUbbF9Doo208VhC6LFM0+d+Gm/FezIRRq1uDXrkAYwsNhR040V2qILEruTiKeD2VIBKij
 AnlcOjV+dG0cUOM2IMEKYgzaK3VHIvuIeWh5uUQSpwQCaXQ/jzJqJOR1qRpwutgQDkGSNouVFxo
 fXQyDw+sH1kQ4yWAZ1qDsq8MjfuS1WO+ij1c6EBzbeLlosLSP/cAD1lEuwkHIBdgSI+b12Jb/rW
 w+5aaxyt8tBwzB/OZhh74yJ2BR+ddiEo8pTiSDyTgMi8HCC77EUg1lI0Banz1ve5jyEjZoF+26D
 sKLzXUSQXdrlgLshwz1I5/vMBjitcp1ABKNq3e3fJnpb3EiXUfk0i6R9JkL1Wui/8TXeKkVhwW1
 mWDU1LokiXHhP8rOQ3s8TDtYVVba+cXOo45HjCXjDb+LApMoF0cGJi2LqcxEKINn0GOsApj1q7Q
 RCFHRKuwAJxqjjsf+IV4cZv0mYmHFafOVEqj+4fpJD9rq6yHAzwc=
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
X-Rspamd-Queue-Id: 8E5132DDB54
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:19:56 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> [...]
> cases; perhaps a 3-X-3 of classmap-defns X classmap-users would get
> too awkward and fiddly.
> 
> This is an untested interface extension, so drop this patch if it
> feels too speculative, knowing theres at least a notional solution
> should the situation arise.

I agree on the patch principle, the implementation seems good.

Can you move this patch after the BROKEN removal? I think you should
"stabilize" core features first so we can merge part of the series (and
reduce patch count).

>
>
> diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
> index e9fa0c8868db..2083a8546460 100644
> --- a/lib/dynamic_debug.c
> +++ b/lib/dynamic_debug.c
> @@ -206,12 +206,17 @@ ddebug_find_valid_class(struct _ddebug_info const *di, const char *query_class,
>  	return NULL;
>  }
>  
> -static bool ddebug_class_in_range(const int class_id, const struct _ddebug_class_map *map)
> +static bool ddebug_class_map_in_range(const int class_id, const struct _ddebug_class_map *map)

(that the rename I mentionned earlier)

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
