Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sI+gEOXh4GlhnAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 15:19:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E789040EAB6
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 15:19:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD55D10E89B;
	Thu, 16 Apr 2026 13:19:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metarealtyinc-ca.20251104.gappssmtp.com header.i=@metarealtyinc-ca.20251104.gappssmtp.com header.b="NDk/fgZQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EEB810E73B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 19:39:14 +0000 (UTC)
Received: by mail-qk1-f170.google.com with SMTP id
 af79cd13be357-8d68bcf50fdso818362785a.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 12:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=metarealtyinc-ca.20251104.gappssmtp.com; s=20251104; t=1776281953;
 x=1776886753; darn=lists.freedesktop.org; 
 h=date:references:in-reply-to:subject:cc:to:from
 :content-transfer-encoding:mime-version:message-id:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OBFBxNBSTTxIBo6jQ9Ed1NU8hv/XV5Shu7D1Vz0KsLg=;
 b=NDk/fgZQB9mAcCJC5WWS7vMmBbDQz5K31xxK783WnHdGNS2hpyNzXdZOh6HpLHCeJG
 EBWlLLT4MW2mdnVxe6SkLxi6END/Mvnsq2xITthwwTM5UzIy3P4RGafV68YiaQpzyDVC
 4hPThha0Ols1qpi38HINVuIxPbC/A3n2R5OckP/gSuYAlXYlHRrRCZ56uoB4fm5/rzqX
 bS1DCTwnUy+2fICrv1rn1MNwBiw2hJuHJ44FIPaAAwWS9k/f/qh8ODPlkvqZNFVTxndG
 42eEoqwuPZF+ry7ud0JXwXL54TlKc1VTPyNQUDSPQIk+9+5n+CiU9l9K8lcwksxpDShm
 oBYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776281953; x=1776886753;
 h=date:references:in-reply-to:subject:cc:to:from
 :content-transfer-encoding:mime-version:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=OBFBxNBSTTxIBo6jQ9Ed1NU8hv/XV5Shu7D1Vz0KsLg=;
 b=jbbFjsTadlkf154AGK4Kgs/yV5cCD5fz+amTLW+f9VzM/FC0HCV6AAp7ujABzqYdTM
 6MYuWT/3AmYc6TKXDc5JHH7bQwU9jJSF2BPrJA2ZszpC1HMdqXFRLrnFJKHZEzw2T1fM
 TYaIWlyhHpYiMRu5zHFZ7DaLRWMcn0/7hA1AEMZmc2wD9VHzJNiGM56HooLvAMc4erI7
 0CM+oYZTKxRPzdz/85M3SlJGRaEFh7sW0523MXaB6XxuNEzloK2nEl89VRHir5eKw2ns
 ZUVwyHlde9V4EkqVWF5MMJCUBjpsU3WGkKp+/Ja+rX1VnTPClKqlAGVdyGrAgQA8xTz/
 8CLw==
X-Gm-Message-State: AOJu0YwJRP+TK5p/uOLRVEkp8JBr/zqXvDbl9HCFr3TbJP+UKK1w3rV/
 5aHFN0Cogarwzf8YbwXEiG2sRsy/CC9CzOORVxk7R8W0rC/sCRep8neTXMDeZcfS0yQce2G2cyH
 sgCZLSy46Y5/kbkIw9BS/ZrxakHG9VVPL+HW6bDjy8MtAYx/zw+gsoTzsPtWPst9gN8SUeUzAZi
 cbRT/kNjfqi+XzqtcTsBQo0DBJnjxOHq5pddnUdGMaww6G6goL05OvaQI=
X-Gm-Gg: AeBDietHthOzLcuKiyvDLm+aPfwfzqnP51Lg9cVhwZEB0o4+YBuvZEixLgKjHPE2qmv
 qIU3ENKm7xLWtCoan57aQrgIZrylMwiF21YzTccz5dkUXQU/lqwJiHwuzz/8y9fjn5phPY0EmO7
 q0OcieHG0AmVJqnQMArUJOsu1qtJb8yfovd6mkuWESOskwBlckITKWYYKZP4AF1O33uV0w/seqK
 ejhQzp2pBzIyaFxZoklC7rrjNwC+Gm5wMumX1JehrlQ2O4NQf112AbcGGof+mK0rkDGnZ3VF4mA
 afj0qyYzm5QFIG2PsuYzUsDRx3nCWc22QgfvBXr8UhREbTd6gSLXTGXi7c3WyuSJbNVYjGsZw+I
 HJpeLn5GsaD31LA4IACIFjrzMth62D7I42oRSGNTDftIMthINbEJXcCoX69qdMLMX08qPI6snsj
 3Oklw0nuqyiGTucdxhyOIgmF85t1bDacEmrBTLkDMI2q/rE46qZ1agfAFg2UaJkhN0z0QWA+S5v
 H13wg37I2nIRDmAFlrTvToCx7HXKXCd4cqs2PsKi0w=
X-Received: by 2002:a05:622a:a192:b0:50d:efc1:841d with SMTP id
 d75a77b69052e-50defc18f77mr209163071cf.23.1776281953156; 
 Wed, 15 Apr 2026 12:39:13 -0700 (PDT)
Received: from [127.0.1.1] ([2607:fea8:e5:500:8e39:827f:e928:9eb7])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-8ae6cbbc1bdsm18245406d6.38.2026.04.15.12.39.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2026 12:39:12 -0700 (PDT)
Message-ID: <69dfe960.050a0220.1c3509.e29e@mx.google.com>
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
Date: Wed, 15 Apr 2026 19:39:11 +0000
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
X-Rspamd-Queue-Id: E789040EAB6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgVmlsbGUsCgo+IEl0J3MgaW4gdGhlIExGUCBwb3dlciBibG9jayAoNDQpLgoKWW91J3JlIHJp
Z2h0IC0tIEkgY2hlY2tlZCBhbmQgaW50ZWxfdmJ0X2RlY29kZSBzaG93czoKCiAgQkRCIGJsb2Nr
IDQ0IC0gTEZQIHBvd2VyIGNvbnNlcnZhdGlvbiBmZWF0dXJlcyBibG9jazoKICAgIFZhcmlhYmxl
IFJlZnJlc2ggUmF0ZSAoVlJSKTogeWVzCgpBbmQgbG9va2luZyBhdCB0aGUgY29kZSwgcGFuZWwt
PnZidC52cnIgZGVmYXVsdHMgdG8gdHJ1ZSBhdCBsaW5lCjEzNzAgb2YgaW50ZWxfYmlvcy5jIGFu
eXdheS4gU28gdGhlIFZCVCBnYXRlIHdhcyBuZXZlciB0aGUgcHJvYmxlbS4KClRoZSBhY3R1YWwg
aXNzdWUgaXMgdGhlIGZpbmFsIGNoZWNrIGluIGludGVsX3Zycl9pc19jYXBhYmxlKCk6CgogIHJl
dHVybiBpbmZvLT5tb25pdG9yX3JhbmdlLm1heF92ZnJlcSAtIG1pbl92ZnJlcSA+IDEwOwoKbW9u
aXRvcl9yYW5nZSBpcyAwLzAgYmVjYXVzZSB0aGlzIHBhbmVsJ3MgRURJRCBoYXMgbm8gYmFzZSBi
bG9jawpSYW5nZSBMaW1pdHMgZGVzY3JpcHRvciAodGFnIDB4RkQpLiBUaGUgVlJSIHJhbmdlIGlz
IG9ubHkgaW4gdGhlCkRpc3BsYXlJRCB2Mi4wIEFkYXB0aXZlIFN5bmMgYmxvY2sgKHRhZyAweDJC
KSwgd2hpY2ggZHJtX2VkaWQuYwpkb2Vzbid0IHBhcnNlIGludG8gbW9uaXRvcl9yYW5nZS4KClNv
IHBhdGNoIDIvMiAodGhlIFZCVCByZWxheGF0aW9uKSBpcyB1bm5lY2Vzc2FyeSBhbmQgSSdsbCBk
cm9wIGl0LgpPbmx5IHBhdGNoIDEvMiAocGFyc2luZyBEaXNwbGF5SUQgdGFnIDB4MkIgaW50byBt
b25pdG9yX3JhbmdlKSBpcwpuZWVkZWQuIEknbGwgc2VuZCBhIHYyIHdpdGgganVzdCB0aGF0IHBh
dGNoLgoKU29ycnkgZm9yIHRoZSBub2lzZSBvbiB0aGUgVkJUIGZyb250IC0tIHNob3VsZCBoYXZl
IHRyYWNlZCB0aGUKYWN0dWFsIGZhaWx1cmUgcGF0aCBtb3JlIGNhcmVmdWxseSBiZWZvcmUgYXNz
dW1pbmcuCgpUaGFua3MsCkpha2UK
