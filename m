Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APp9AOLh4GlhnAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 15:19:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3DD40EA93
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 15:19:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A8DD10E1EE;
	Thu, 16 Apr 2026 13:19:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metarealtyinc-ca.20251104.gappssmtp.com header.i=@metarealtyinc-ca.20251104.gappssmtp.com header.b="ltoAS3xo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
 [209.85.217.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3909610E736
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 19:08:33 +0000 (UTC)
Received: by mail-vs1-f49.google.com with SMTP id
 ada2fe7eead31-60fee2fa3b8so1189728137.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 12:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=metarealtyinc-ca.20251104.gappssmtp.com; s=20251104; t=1776280112;
 x=1776884912; darn=lists.freedesktop.org; 
 h=date:references:in-reply-to:subject:cc:to:from
 :content-transfer-encoding:mime-version:message-id:from:to:cc
 :subject:date:message-id:reply-to;
 bh=p7DUpKepUcTvz1aYRk2xwKoLLVYxkuA8yuF8RSnjHh4=;
 b=ltoAS3xogpdIZRXMOuFEPOH6JUtndxxbGk29d0+nuigTTP6SxWmCpWyKFKYOP0BqkP
 T4NSF542vqjI46R/1uyrcUG5+FhMn85QICXzLzj5yN3za3Q5HATqzi8XBXWmvgNyt8rW
 NfB7DLIunlzUaV9ZqZc5uuGkkmup4ie33/00OQLjBUd3AHgfnqqv7vO0YpkaHPbR7P63
 WhrH9C/444SdClpHmlSJUNf6dfQcnNaSIJ/RQf+EaoJIliqSvi1AQzIGFDgdASsgcuF0
 2NOWeL67if/MxCHNYDNei+6ieWGhTINU90NNRYwQwdKJ/Wx26gah2fqiJPfPO8Fp8dpm
 le/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776280112; x=1776884912;
 h=date:references:in-reply-to:subject:cc:to:from
 :content-transfer-encoding:mime-version:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=p7DUpKepUcTvz1aYRk2xwKoLLVYxkuA8yuF8RSnjHh4=;
 b=Lx60nMfOySSiWtbOkOvcXp2Sq3/rXsbadZfyjDQpxpxMFIcownBzTN+Ryx0BTdse3j
 YwTnI70x7O1Iu7Dy5d58Dp+nJEqovoLhHwv0/H9E07f1Z3yA90kjSrPRdRpE0IY8DRez
 B97VH8Cwozd5UZcGUD22PFYBa5axcH3CyLiy9sTWTDNNXswQC6mxt/FTpBP6Qw+h1U5Y
 VO1glGgviuIKOtGo9fLTXLHKlRzLRt2Ag1BN8BhY+quTblhFQhUtf+bZzhqGAR53xr4Y
 LUHi+u27O2tKExieHmej1kCRAVJQkdgHLR5TDFJJwDqxX/s5txpDDw4L/+M27ADe0dZE
 AGbw==
X-Gm-Message-State: AOJu0Yyhr9AoULlBP+Z+dJMcVSyOETTpmQhHjCm9tlqSiQwNq3IUHwc/
 TgDNAoy4fhMktfS9IDfrsZAJbXSGhkdfZ5+PaUhC+2Em4TioPiti9bDpj8HIRRMVe5d/dub1b5X
 W4tiZZw6+YRA8RRhCbjUTDc3Z3YNewgOQzdMBIqNuBS702jy3X70s0gVsOeRNMBWgDHLOdKP3or
 foE9JeKGbxHOw03Q0Ff+L/gmlQANXT1sAA3vs42RYtoSRO8SAr8Qt79SI=
X-Gm-Gg: AeBDietpq0MtQ4CiSw6CHgf6Qq1CC3DYUu/PJ+9H2NWGSPYGpT/dQCE256uDhGRugHr
 oxLyo7iJtgLWdOc9R8v57LyBGaoduBq0hBFNsB/A+EuXoFo3tn9yXyeiDnxZe8hO1lZq95XOJko
 M8S9JpbEkcg/iWdsCykh8xKVyh8narRv0m+WQAO7BYekVvjKWwcJFBB5jMhMFaSah91xvpbYKwk
 G5wn5LAdT/3TfbpuXn6by/1vZDeeP1wPPB16HJXQC+0S41pgPXsn+tCk8sa8cFmOtH1TSgfdvtF
 HxJ8rx8iWP95M5PJSXCRplN6aqfW8vL2cObINELzu98mBpLtv8v67egqg4V/Zx4V8Z8wqcW/X/d
 9Ut5gIzZ1Z6pXer0SfT+eLKuj1bPDac/GnoZQK7j9096w9r8s9TtG31/RslDnbqUFhh4MTs7kJ3
 rBbp1ltXOOlV9Ve2xfUm0TfN1m8+oaPI5c7/0N4CIti3hbcjtSAFcZGlFWg3dd0Ut0uIdpw61nZ
 oshNqLTmHZhe95ZIXkYNnHrnabFxex9YSHsJ2Osi8s=
X-Received: by 2002:a05:6102:1621:b0:608:6d10:e415 with SMTP id
 ada2fe7eead31-609fe9b1602mr9781543137.8.1776280111672; 
 Wed, 15 Apr 2026 12:08:31 -0700 (PDT)
Received: from [127.0.1.1] ([2607:fea8:e5:500:8e39:827f:e928:9eb7])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-8ae6cda4fa0sm18569186d6.36.2026.04.15.12.08.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2026 12:08:31 -0700 (PDT)
Message-ID: <69dfe22f.050a0220.301b30.5755@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
From: Jake S <j@metarealtyinc.ca>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 2/2] drm/i915/display: allow eDP VRR when EDID has
 adaptive sync range
In-Reply-To: <20260415130626.10523-3-j@metarealtyinc.ca>
References: <20260415130626.10523-1-j@metarealtyinc.ca>
 <20260415130626.10523-3-j@metarealtyinc.ca>
Date: Wed, 15 Apr 2026 19:08:30 +0000
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
X-Spamd-Result: default: False [0.39 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[metarealtyinc-ca.20251104.gappssmtp.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[metarealtyinc.ca : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j@metarealtyinc.ca,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[metarealtyinc-ca.20251104.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mx.google.com:mid]
X-Rspamd-Queue-Id: 8D3DD40EA93
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgVmlsbGUsCgo+IEFGQUlDUyB0aGUgV2luZG93cyBkcml2ZXIgZG9lcyByZXNwZWN0IHRoYXQg
VkJUIGJpdC4gU28gd2Ugc2hvdWxkIHRvby4KClRoYXQncyBmYWlyIC0tIEkgZG9uJ3QgaGF2ZSB2
aXNpYmlsaXR5IGludG8gdGhlIFdpbmRvd3MgZHJpdmVyCmludGVybmFscyBzbyBJIGNhbid0IHNh
eSBkZWZpbml0aXZlbHkgd2hldGhlciBpdCBjaGVja3MgVkJUIG9yIG5vdC4KCldoYXQgSSBjYW4g
Y29uZmlybSBpcyB0aGUgZW5kLXVzZXIgcmVzdWx0OiBvbiB0aGlzIERlbGwgWFBTIDIwMjYKKFBh
bnRoZXIgTGFrZSksIFZSUiAyMC0xMjBIeiB3b3JrcyBvbiBXaW5kb3dzIGJ1dCBub3Qgb24gTGlu
dXggd2l0aAp0aGUgc2FtZSBmaXJtd2FyZS4gVGhlIFZCVCBkb2VzIG5vdCBjb250YWluIGEgVlJS
IGZsYWcgZm9yIHRoaXMgcGFuZWwKYXQgYWxsIC0tIGludGVsX3ZidF9kZWNvZGUgc2hvd3Mgbm8g
VlJSLXJlbGF0ZWQgZmllbGRzIGluIHRoZSBjaGlsZApkZXZpY2UgYmxvY2suCgpTbyBlaXRoZXIg
V2luZG93cyBoYXMgYSBmYWxsYmFjayBwYXRoIHdoZW4gVkJUIGRvZXNuJ3QgZGVjbGFyZSBWUlIs
Cm9yIERlbGwncyBJbnRlbCBEQ0ggZHJpdmVyIHNoaXBzIHdpdGggYSBkcml2ZXItc2lkZSBvdmVy
cmlkZS4gRWl0aGVyCndheSwgdGhlIHBhbmVsIGNsZWFybHkgc3VwcG9ydHMgVlJSICh0aGUgRURJ
RCdzIERpc3BsYXlJRCBleHRlbnNpb24KZXhwbGljaXRseSBkZWNsYXJlcyBBZGFwdGl2ZSBTeW5j
IDIwLTEyMEh6KSwgYW5kIGl0IHdvcmtzIGluIHByYWN0aWNlCm9uIHRoaXMgaGFyZHdhcmUuCgpG
cmFtZXdvcmsgbGFwdG9wIHVzZXJzIGhhdmUgcmVwb3J0ZWQgdGhlIHNhbWUgY2xhc3Mgb2YgaXNz
dWUgd2l0aAp0aGVpciBCT0UgcGFuZWxzLgoKSWYgcmVzcGVjdGluZyBWQlQgaXMgaW1wb3J0YW50
IChhbmQgSSB1bmRlcnN0YW5kIHRoZSByZWFzb25pbmcgLS0KT0VNIHZhbGlkYXRpb24pLCB3b3Vs
ZCBzb21ldGhpbmcgbGlrZSBhIHF1aXJrIHRhYmxlIG9yIGEgbW9kdWxlCnBhcmFtZXRlciBiZSBh
biBhY2NlcHRhYmxlIGFsdGVybmF0aXZlPyBJJ2QgcmF0aGVyIGhhdmUgYW55IHBhdGggdG8KbWFr
aW5nIHRoaXMgd29yayB0aGFuIG5vIHBhdGguCgpUaGFua3MgZm9yIHRoZSByZXZpZXcuCgpKYWtl
Cg==
