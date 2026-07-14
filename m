Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c4AWDspZVmpN3wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:46:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 895D4756936
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:46:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=oztwX5PP;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07AAD10E640;
	Tue, 14 Jul 2026 15:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ECA810EDB5
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2026 15:46:15 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id
 46e09a7af769-7e9f829d75aso731842a34.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2026 08:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1784043974; x=1784648774; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :content-type:mime-version:references:message-id:subject:cc:to:from
 :date:from:to:cc:subject:date:message-id:reply-to:content-type;
 bh=nNt4aFBQBTeC6gh7XjshPB2bRqBQHmW7ChcRLsTBtjU=;
 b=oztwX5PPCy3FIDC/381yuzjqFrAtiy7JnrnZMmSeDSv3PS6Uu5O9uBvtkM7GJa0Fqh
 r+/wRRBr9dQ80Bm0ekdruwEiLu1SXW18ZRMtKIP6EXjVWO7oCXxSxI8oEV29hENh91yB
 cNKRKfKhCNwWeHWdpSQQ242a7X1coE2BFNvgT+F5QwITvzKB3v5mnkVEl6tFB2o9NodT
 ZDQvyQBaCd6Jqus43XJ08akyC9UIDACZnvhK+ksjBtaq1MEdiTxqupf3vLA49X6nvMhh
 WExzW+/W5qpNZfxlzTyG5PgN5vuHOFqhjmupIvk7CeaeNw2AatTvHd1s4qdP5E+u/Rnd
 2TGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1784043974; x=1784648774;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :content-type:mime-version:references:message-id:subject:cc:to:from
 :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to:content-type;
 bh=nNt4aFBQBTeC6gh7XjshPB2bRqBQHmW7ChcRLsTBtjU=;
 b=CX56ze+inMqaA9wQEdsK/AP+Sb/9g5wdQCR3E1e+Mva9wyj42WbSh7+nfy7T5ZIgiK
 h4zxbUeb3bjB2SwrMI1XsYtHsyzFkXGfd+mYeRA+1i9AZeQRV4Seo5IVZbHLh4s+8mQ+
 wwGlD8IjsL/5StlqvUs8zlX2EIuvxh8Mr6G/sTATy6untVDgLpm0YjZDbJQkHG9Wr5eY
 TLRRUKCgOec7WIKI9bcyoAh9ep6UQ1D3WdeF9G2oYeqBRpX9y9A1RPHm3AJfZLCXCK1T
 iD3kwTs4XOYrL0lpycvrPFIRDbOBt00TobVXnu70B7nCeYS8DoiLH05M7ZZS/pmVw+y4
 bSTg==
X-Forwarded-Encrypted: i=1;
 AFNElJ9qhfZcEi1oKHH2hCI2xl1N+UlDmOIKNkwjUP7fLsND2s6+lEe1of+Z2BYq/eq5bMQ029n4hxZEVvk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxr7R2TSkMP+SZWx1TQ7gjUKSziFo0ue5y1jfm6OCFJxrjn7ZsR
 You3RONfUbtBBESg5KISb36QwoselOnHjWGOMoRYEfCY009fdljrDu0q
X-Gm-Gg: AfdE7clHr8Kl3a+/yXuJ7soQRMHbb9hkNOuorK873WSpVMjg6BXhXv2AQf201zwAOXC
 IJxOtIyAbbv+ArUTE6JG/KvvzrfsHOcgihbr7A+iK8feX1mfhSzi6AnCwX4bWnO/1ERbYXLQmgc
 bhzPqCC1HL4JqWcdlmQ9ekRVlS1y6UiGF6GbAD3aFobVs80c42XcoqVpwV/tS3PtH98zbF9ZQFa
 Knw2DpqHmu/NKJpErBWENFy5QdJ8Dch+bOdIZG9b3nl1K/wchMt2Eibu/X6w3/3pU8iNCHoQJse
 c0TccuP6hi22Hmev7FJVOIRsAypWPw/D4uYUzluPyfIPFHpzNFIkenyC4RY3CHGO0+4LBKZoEQc
 ujNRk2bY0ELKKGfJn/T9IDbfSuSS2vSNGg7FlC+poux46IDgl/i5cMC0jKtGxO6AHRf8Qc7elkC
 c1pBebZaKIKOebe2c=
X-Received: by 2002:a05:6830:3108:b0:7e9:c76c:abe3 with SMTP id
 46e09a7af769-7ec096027a7mr9375213a34.6.1784043974139; 
 Tue, 14 Jul 2026 08:46:14 -0700 (PDT)
Received: from localhost ([74.80.182.78]) by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7ebcb2bc241sm15641928a34.20.2026.07.14.08.46.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jul 2026 08:46:12 -0700 (PDT)
Date: Tue, 14 Jul 2026 18:46:06 +0300
From: Dan Carpenter <error27@gmail.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Markus Elfring <Markus.Elfring@web.de>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Simona Vetter <simona@ffwll.ch>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] drm/i915/bios: Move a variable assignment behind a null
 pointer check in intel_bios_encoder_supports_dp_dual_mode()
Message-ID: <alZZviFT2jfABiZq@stanley.mountain>
References: <e81277a0-93f8-45e9-9fa4-7c2c2df9c311@web.de>
 <alZVl0o7uBoncUos@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <alZVl0o7uBoncUos@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.vivi@intel.com,m:Markus.Elfring@web.de,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:airlied@gmail.com,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:simona@ffwll.ch,m:tursulin@ursulin.net,m:ville.syrjala@linux.intel.com,m:linux-kernel@vger.kernel.org,m:kernel-janitors@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[error27@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[web.de,lists.freedesktop.org,gmail.com,linux.intel.com,ffwll.ch,ursulin.net,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[error27@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,stanley.mountain:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 895D4756936

On Tue, Jul 14, 2026 at 11:28:23AM -0400, Rodrigo Vivi wrote:
> On Mon, Jul 13, 2026 at 04:05:53PM +0200, Markus Elfring wrote:
> > From: Markus Elfring <elfring@users.sourceforge.net>
> > Date: Mon, 13 Jul 2026 15:56:46 +0200
> > 
> > The address of a data structure member was determined before
> > a corresponding null pointer check in the implementation of
> > the function “intel_bios_encoder_supports_dp_dual_mode”.
> > 
> > Thus avoid the risk for undefined behaviour by reducing the scope for
> > the variable “child” behind condition checks.
> > 
> > This issue was detected by using the Coccinelle software.
> > 
> > Fixes: 044cbc7a74c136f12a80c855cadd1b085084aef1 ("drm/i915/bios: Nuke DEVICE_TYPE_DP_DUAL_MODE_BITS")
> > Cc: stable@vger.kernel.org

Please stop adding Fixes tags to these and talking about "undefined
behavior" in the commit message.  Pointer math is defined...  It's
just a style preference on your part.

regards,
dan carpenter

