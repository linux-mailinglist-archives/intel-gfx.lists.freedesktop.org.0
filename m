Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E103AF26
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 08:49:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74CD4890FF;
	Mon, 10 Jun 2019 06:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59314890DA;
 Mon, 10 Jun 2019 06:49:43 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jun 2019 23:49:42 -0700
X-ExtLoop1: 1
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.38])
 by fmsmga001.fm.intel.com with ESMTP; 09 Jun 2019 23:49:39 -0700
Received: from platvala by thrakatuluk with local (Exim 4.91)
 (envelope-from <petri.latvala@intel.com>)
 id 1haE7e-00011P-Ou; Mon, 10 Jun 2019 09:49:38 +0300
Date: Mon, 10 Jun 2019 09:49:38 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20190610064938.GL22949@platvala-desk.ger.corp.intel.com>
Mail-Followup-To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Antonio Argenziano <antonio.argenziano@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Katarzyna Dec <katarzyna.dec@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 =?utf-8?Q?Micha=C5=82?= Wajdeczko <michal.wajdeczko@intel.com>,
 Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 radoslaw.szwichtenberg@intel.com, michal.winiarski@intel.com,
 lukasz.kalamarz@intel.com, intel-gfx@lists.freedesktop.org,
 janusz.krzysztofik@intel.com
References: <20190607115142.32668-1-janusz.krzysztofik@linux.intel.com>
 <20190607115142.32668-2-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607115142.32668-2-janusz.krzysztofik@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t v11 1/1] tests: Add a new test for
 device hot unplug
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: janusz.krzysztofik@intel.com, intel-gfx@lists.freedesktop.org,
 igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMDcsIDIwMTkgYXQgMDE6NTE6NDJQTSArMDIwMCwgSmFudXN6IEtyenlzenRv
ZmlrIHdyb3RlOgo+IC0gdXNlIFNQRFggbGljZW5zZSBpZGVudGlmaWVyLAoKCldoeT8gV2UgZG9u
J3QgdXNlIHRob3NlIGluIElHVC4KCgo+IGRpZmYgLS1naXQgYS90ZXN0cy9jb3JlX2hvdHVucGx1
Zy5jIGIvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5k
ZXggMDAwMDAwMDAuLmQzNmEwNTcyCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL3Rlc3RzL2NvcmVf
aG90dW5wbHVnLmMKPiBAQCAtMCwwICsxLDIyMiBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMAo+ICsvKgo+ICsgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3Jh
dGlvbgo+ICsgKi8KCkFuZCB3aHkgR1BMLTIuMD8KCgotLSAKUGV0cmkgTGF0dmFsYQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
