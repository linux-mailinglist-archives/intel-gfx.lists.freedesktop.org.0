Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDvVNtJ4vWkA+QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:41:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B19A92DDA22
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:41:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C8A910EB4D;
	Fri, 20 Mar 2026 16:41:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="E0KSujl9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74D6410EB6E
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 16:41:52 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-04.galae.net (Postfix) with ESMTPS id 642FBC5668D;
 Fri, 20 Mar 2026 16:42:12 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id DDCD9600E0;
 Fri, 20 Mar 2026 16:41:46 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id EA13910450CB3; Fri, 20 Mar 2026 17:41:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774024905; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=VTzg+gCn+3SSyvA2tJAFWtV2tz8sGnFVCym/sblWN/8=;
 b=E0KSujl9jeNWQO6spEA+e4SRvfV796T+JBzLCmDud+I6xDk1XQAkFI8xslAtxw8BOzvloY
 bzZa+8x6yg3SybdwPwmZoX8xoJyqIGez1HUTyv/mlmDBCFgfnPU1xv+4QRczJCAQTrxZjq
 ctWQ7SSks7tEY7ErvouYk28yP1YjajzlE3Q1N3NuyN8S9K1IdfG4dpLogNlXwUDgXcqK7i
 EXTo5qF5Dhqu8ylJ19UzA220WcMOH1C8g/+Dy3/iH/K6shpSoJnZvU0umjtUUM0SNMyN6P
 JFcUasH/1CCdLlCm5JDoBI9HADTLIEO/MXqDOen5xanR8tmUh9/pS4ChSNPnkQ==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 15/65] dyndbg: macrofy a 2-index for-loop pattern
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
In-Reply-To: <20260313132103.2529746-16-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-16-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491430.6181.8634650505959510277.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=569;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=pdrjqLsFmHIbG9X3g6woXxeUhicJJyV9EoUqHZShqbU=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjW6jY+HJ/rjDVPgQoNFIF9TaWBTui1u7hFy
 Yq3XSIZkg2JAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab141hsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOIK8A//U2rZrLMs+ef3C31EeZ3hyLrARRM4H4N
 AA/QpDwgkx3Fpec45T9+rRg4DoFCi80urNIb1j97UMT2W6HjFujCC7T9pbVw8SbJGiNnJJx8BVu
 3mxpa4mQDUQ6fJ/mr6IDQ4A/BtKo1i5VEnjA5/O7y+jrSsQNeMx8MSKIxdmS6kYurUpQqpCfwvg
 TOPXweWL4sKjrXGsmVfyRFE8r52ahnf0EzL0nvaGfCuCRP+CN6yWjbNhFH/9EMhyaxUx2bJy1YN
 aL9I88RxlcPg/RhqnCUkKOB6pGaRcpkfEWiX5hAcTzzr2ZUWvGTg1RL+nWYN4+Wu8D7b0wJgo83
 hvl6GeBNfm81gqRMyoo6jXJ6Qjgy78mbpC0gyjR08UyW9h0oTn4WJggSjZZyfEYh8THil4EDN77
 cnjPtjiESL+bOWJHNPBQAXzXHV52LOUKBITABsOd8Ypn/ZzWdBg9Qwc2lhFn8zCXf2mgkhAlNlU
 BJtwk2EOrJAlINz4zYmos3m4vGURSIMg07v4vcUVzG/DSfEewsXmOFHyRfnMa4ZH0fUiA/afx82
 14kSQt4jnWoEsj+7ro1GEuQikBOBRQDtM00PEFT9Yb6hOdsK80xSTez5owT8uyrj3cZbyckghuK
 zghhiNLWFAe3uV/hiZt2JW0WF5QBxg+C0oP0MFOEZKxai5m+UyrM=
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER(0.00)[louis.chauvet@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[louis.chauvet@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: B19A92DDA22
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:19:40 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> dynamic-debug currently has 2 __sections (__dyndbg, __dyndb_classes),
> struct _ddebug_info keeps track of them both, with 2 members each:
> _vec and _vec#_len.
> 
> We need to loop over these sections, with index and record pointer,
> making ref to both _vec and _vec_len.  This is already fiddly and
> error-prone, and will get worse as we add a 3rd section.
> 
> [...]

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
