Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGX2JnbBGGp4nAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 00:28:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 095025FAF00
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 00:28:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64A4310F699;
	Thu, 28 May 2026 22:28:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="mlm/tXEd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E9DE10F69A
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2026 22:28:02 +0000 (UTC)
Received: by mail-qt1-f180.google.com with SMTP id
 d75a77b69052e-516d78ba1adso2761cf.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2026 15:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1780007281; x=1780612081;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=gVpTGabkogMhFDXFQqGwv1xAtmXdvvWNz/fIztc8SkQ=;
 b=mlm/tXEd5t/cKWtAsY4YO2wkZJUzKUnjPpF75jmP2F2JMpW7/s8lIQxb4SnI+WxdHg
 vJ0KU8ChcZmc3vPJApUAcxOg5sMfdoTuq/VX2S3487HfYyVtPO8c0leVvmUi+GuRZgkM
 HmY+plffzDerciiphKrl2KrnQT5ENm80CejkmF542+0KiKUcX5XjljqFpdvpus3AvPCz
 Wqp2i0YU9Z+AuaV6G0i/pFI+IHW4AOqMyDPSqG/5iFjMuwSrFNH4IPtPHe56b9WBFyeA
 lW7HvLGHJz41/sFaKbCvSbeDKubJkiPvWFRhnXdkYU7wTg8D+1neOSjBH0pIIOhdcN8U
 MGEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780007281; x=1780612081;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gVpTGabkogMhFDXFQqGwv1xAtmXdvvWNz/fIztc8SkQ=;
 b=OWKXRCs9ni7a70O4GFe0ZsSB5XuSP1h1ycqdYPpgbDLzdQ0x3gNFnpbklCPG+yq9VW
 MF/XJEceZVj0zg8biqvXAehVDOZsKoMxgtxEUkfdNdFEgdUk/evnpztP8NhmzTVMx/Z9
 ThZzs2YzlypSS80P/1Uuudqi3FwuKTwNv5FFg5zT3lSMieiZtZO60rHB4HeAUbUJshrX
 oL81NnR4J8F95llpqd11X/y9tHZap++rdVBAebHsApYhuOgWXaV+rWt0dvZ0BwszJnat
 vfDAh45+QurYA1lT1fvSa8O0KzSoDAtcNGhIMpT37ZamPHSsTiB6YheAoK79G4SYlZw9
 qDow==
X-Gm-Message-State: AOJu0Yxsp41XsdFTBO0XX6QveQK/BdzBeG4O+0yqGvAusRIF21IL+DUU
 yUHQDbgw/3Bv36ByTiUnPD4VLUmMoe2P0vy5p9v1K1fElsDCBJlpayqnGjscJ4VhGw==
X-Gm-Gg: Acq92OG5L92M1OqZD5Ws+Q8Ntse4+IVCtxHO/PUwHZiMlcwnM8L8I2WbcggKeukNSZ2
 Kd20Pewmqeo7qldHZlQBHqqszWSl4XNhLZQDfGDtS6gLJ0ziOOiH2yzxUSCMlTWiVeQJcCqeJ+H
 V3mF+HRnCh7g4OtsNe71iBRVkeRZ2rggU8DCA7iP9lW3/yux2qNwg9EsIXDrz6OHMKyP/82tfXh
 GFGWTL9/pi+PBF5YgbtOu5o5HIh8+SQfoBZLzg59qrGVuAGHquQ5jJZ7lJDWsSaGuwSQRf7/d7x
 f/t566mH4PB2SK6sg9sH3LS1eq8nxmTVkswuf+9Jo0LVpmUcl4ZgmYhaVFaJbvyqYG+dpJTXwpQ
 j0SlCI1I5e0voYNHEw6l5EuFbdu9l4rxAsDlohlJ8nkWV978/M3csExWPVQp/gyS+wxcRlCbhFl
 hzQWEzZMlcL+uCvvOQ53+LtexdHMaNelFzBfGANwphyRwIfLUU6Am5ug+hAaPy8nY2Wqb6WB9mN
 cW29WhWLzbaWaBQ7PUSfEays0YPu9Kg1yVwFmOC/4xaA1Hq6cpOy0EllYKekc/eKvtb/UsicPc5
 r9xypm1/4BHX/Q==
X-Received: by 2002:a05:622a:8c1a:b0:50e:5c9d:49c7 with SMTP id
 d75a77b69052e-5172df5a778mr1238301cf.7.1780007280921; 
 Thu, 28 May 2026 15:28:00 -0700 (PDT)
Received: from google.com (236.10.48.34.bc.googleusercontent.com.
 [34.48.10.236]) by smtp.gmail.com with ESMTPSA id
 00721157ae682-7d389813ee6sm93608657b3.2.2026.05.28.15.27.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2026 15:28:00 -0700 (PDT)
Date: Thu, 28 May 2026 22:27:57 +0000
From: Brian Geffon <bgeffon@google.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 pranay.samala@intel.com, radford@google.com, gildekel@google.com,
 seanpaul@google.com
Subject: Re: [PATCH v3 0/4] More Fixes for color pipeline
Message-ID: <ahjBbUwF_8jcXKHY@google.com>
References: <20260511053213.3122314-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260511053213.3122314-1-chaitanya.kumar.borah@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:chaitanya.kumar.borah@intel.com,m:intel-xe@lists.freedesktop.org,m:ville.syrjala@linux.intel.com,m:uma.shankar@intel.com,m:pranay.samala@intel.com,m:radford@google.com,m:gildekel@google.com,m:seanpaul@google.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[bgeffon@google.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[google.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bgeffon@google.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 095025FAF00
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 11, 2026 at 11:02:09AM +0530, Chaitanya Kumar Borah wrote:
> v3:
> - Re-arrange patches

We've been impacted by this on PTL devices. Ray has tested and can
provide more details.

In the meantime can we ask that a maintainer take a look?

> 
> v2:
> - Make dependency on atomic state more explicit (Ville)
> - handle blobs in hw state clear
> 
> Chaitanya Kumar Borah (4):
>   drm/i915/display: Copy color pipeline from plane in the primary joiner
>     pipe
>   drm/i915/display: Don’t use atomic state back-pointer to derive color
>     pipeline
>   drm/i915: Avoid programming color HW blocks for NV12 Y planes
>   drm/i915: Fix color blob reference handling in intel_plane_state
> 
>  drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
>  .../drm/i915/display/intel_initial_plane.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_plane.c    | 77 ++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_plane.h    |  5 +-
>  4 files changed, 61 insertions(+), 25 deletions(-)
>

Thanks!
Brian

> -- 
> 2.25.1
> 
