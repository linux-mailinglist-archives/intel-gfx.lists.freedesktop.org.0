Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBMTLuPh4GlhnAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 15:19:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 623D640EAA1
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 15:19:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A9A410E1F4;
	Thu, 16 Apr 2026 13:19:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metarealtyinc-ca.20251104.gappssmtp.com header.i=@metarealtyinc-ca.20251104.gappssmtp.com header.b="oF/feQem";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4A7610E226
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 13:06:31 +0000 (UTC)
Received: by mail-qk1-f177.google.com with SMTP id
 af79cd13be357-8cb38e86cf2so610878985a.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 06:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=metarealtyinc-ca.20251104.gappssmtp.com; s=20251104; t=1776258389;
 x=1776863189; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=0gNoNrQVjNt0zcqpJEvCkIoUDFsKLs4nqY7HiFFeVWk=;
 b=oF/feQemJ4u+l8Ay3iIZ7Fw2GEkZGAH9uELgBZebilKu60LjTqyQfIxF08VS8y/IoX
 j41WNuTvdQddK2SBZfRVTLvPO14BBRvykmgZofoCLsUfioPy/DMvavljfnvp7SyQZF0F
 b5iQ96IgfUaZp4rvtQriD4ChWZG4ievyBCR2ScX6AXNlbZE7tsjkOgYKz3hamDzv5Jzl
 6W2xysaJYbFkktIVFq6QFji7uOofd4Auys05XbDeNWuQhX4OGZUTagjlvEFZjBgA0eab
 dHc1VrR455LxxvmJqk1XCOK1XY4RqbUOJqreCR7GxngT7d4VmrQqVnjFyQu163t17NlC
 w2dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776258389; x=1776863189;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0gNoNrQVjNt0zcqpJEvCkIoUDFsKLs4nqY7HiFFeVWk=;
 b=ZewCngURjOmWv4L6lvkyK6tyree1biuycv/iwOVqZVHGJ2gtDRs0sWNQIxADAKBMz4
 rpyFaIS+rL0WFm6g52N5BPCU+uxVSr1iRl/Ub7JkuPuqh6ZaCBJOZsWbf7ZILdoCF7yx
 4A5ZXzCDarSqH0euwfaUfqQ9rg7e8NqDUf/yo+87Pt0+WaJZljEevWXc72hxBT5Ko5dm
 KUp2RYwXkK7UL9N9fll6RacXFbM66lwHop127mbyX4Q6QPZsr5bpfWHZK1jnObX36hQ6
 5WB6iIY5Wxrcvu1dcDxgNXW2cmi49bGvqZWGGaXkRdePcF/te6zkYfgh8f/WLQPNWLpj
 Kg1g==
X-Gm-Message-State: AOJu0YyY2UvKENt1ZEWgTg2Sr1t1tCeRNHGyt3SoaVgik7D3fL7f1RbE
 9E+3KTCn/VkSAia73KeTf7cpbOqzbMeL/y9oD9qGBc64o3wXK5TcsnENk5L312LRR+WadN8tuSv
 lEfnp7tRXfZExj092+r2LMzBdEFvPDch7zrdIcTcltBqam55DdMhMajZ3VhVFkzEo/y4GCzRa12
 3eyGlpHWejVFXKUY+wtEEVzK0MfOPH2VKif7WTxFYUt7BaQ4c1duVuyWY=
X-Gm-Gg: AeBDiet+3p7CimEm6pCfE8CB2nlWBI7SXaQ8kRbNWcOIZ4Bniatr9nLKpvW2c4PXnIa
 tAkoj1tACpzD3B9EZSqqJ0hA8DdTR8NYjKO0SQZLcqESnkh7gT8C+OpLNTwrtTlCStk5GQAhlnF
 nEN9kwIfsWCg1OdDCBrbbea4BIMdu3dj1/zgS/J8NBOtO7SoV/MXwOMZDiSk4HWOxjLSX3vXMb8
 ZsOkMcLMN40iAgqUPpzmr+3jHpLZan8IhAJ+PFLgpD+K+A1SiQDdIpWFXkO9I0e3FAVeMqwC5ED
 nkR90gZMDEp8q/eYejx+X3pfoXg9TgrT2v0EPjbFRkPPzWW4SXLYaw0GN9+wNbQ8qi7MmaKrWaT
 NGWn1U1sguKV0qYa4d9MMemq6JuWovNL7pLW0dkNwrMDOsQYN/24LZzOWzqu5fWofy1YLBKEvOD
 E55A+RMac9DEKXS6mMZ2WCibPZ5S1kf76FNbhFLWXNo+93GF/r7M6JXtNGNqqX7zSpVeBCbG1b4
 kI+JJdPIThNd46YeZ0DGB2zpQmuN9D4Rfq2JbxB890=
X-Received: by 2002:a05:620a:4489:b0:8b2:e666:70d with SMTP id
 af79cd13be357-8ddcf7ae416mr3077721685a.43.1776258389235; 
 Wed, 15 Apr 2026 06:06:29 -0700 (PDT)
Received: from jake-laptop ([2607:fea8:e5:500:8e39:827f:e928:9eb7])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-8e4f31f95f9sm125192385a.43.2026.04.15.06.06.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2026 06:06:28 -0700 (PDT)
From: Jake S <j@metarealtyinc.ca>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, rodrigo.vivi@intel.com,
 Jake S <j@metarealtyinc.ca>
Subject: [PATCH 0/2] drm: Enable eDP VRR for panels with DisplayID Adaptive
 Sync
Date: Wed, 15 Apr 2026 09:06:24 -0400
Message-ID: <20260415130626.10523-1-j@metarealtyinc.ca>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 16 Apr 2026 13:19:24 +0000
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
X-Spamd-Result: default: False [1.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[24];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[metarealtyinc-ca.20251104.gappssmtp.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[metarealtyinc.ca : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[metarealtyinc-ca.20251104.gappssmtp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[j@metarealtyinc.ca,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[metarealtyinc.ca:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 623D640EAA1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Many 2025-2026 laptops (Dell XPS, Framework, etc.) ship with OLED eDP
panels that support VRR 20-120Hz. These panels advertise their VRR
capability through a DisplayID v2.0 Adaptive Sync Data Block (tag 0x2B)
in their EDID. VRR works fine on Windows.

On Linux, VRR is broken due to two issues:

1. The DRM EDID parser (drm_edid.c) only reads monitor range from the
   base EDID Display Range Limits descriptor (tag 0xFD). It does not
   parse the DisplayID Adaptive Sync block. This leaves monitor_range
   zeroed. AMD's driver has a private workaround; the generic DRM
   layer does not.

2. The Intel display driver (intel_vrr.c) gates eDP VRR on a VBT
   (Video BIOS Table) firmware flag. Most OEMs don't set this flag
   because the Windows driver doesn't need it. This blocks VRR even
   when the EDID clearly declares support.

This series fixes both issues:
 - Patch 1 adds generic DisplayID Adaptive Sync parsing to drm_edid.c,
   benefiting all DRM drivers.
 - Patch 2 relaxes the Intel eDP VRR gate to also accept EDID-based
   capability when the VBT flag is absent.

Tested on Dell XPS 2026 (Intel Panther Lake, xe driver, LG Display
OLED 3200x2000). VRR 20-120Hz confirmed via kernel vblank event
tracing -- display dynamically varies between 32Hz (idle) and 120Hz
(active rendering).

Related work: Adriano Vero posted a similar DisplayID range parsing
patch to LKML (2026-03-28) which has not yet been merged.

GitHub: https://github.com/jibsta210/edp-vrr-linux

Jake S (2):
  drm/edid: populate monitor_range from DisplayID Adaptive Sync block
  drm/i915/display: allow eDP VRR when EDID has adaptive sync range

 gpu/drm/drm_edid.c               | 53 ++++++++++++++++++++++++++++++++
 gpu/drm/i915/display/intel_vrr.c |  7 ++++-
 2 files changed, 59 insertions(+), 1 deletion(-)

-- 
2.53.0

