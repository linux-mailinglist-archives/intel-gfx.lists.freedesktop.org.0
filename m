Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F1F667DF
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 09:39:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F326A89187;
	Fri, 12 Jul 2019 07:39:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0C966E2E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 07:39:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 00:39:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,481,1557212400"; d="scan'208";a="341625091"
Received: from jlahtine-mobl.ger.corp.intel.com (HELO localhost)
 ([10.237.66.136])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2019 00:39:14 -0700
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190711073155.10926-4-janusz.krzysztofik@linux.intel.com>
References: <20190711073155.10926-1-janusz.krzysztofik@linux.intel.com>
 <20190711073155.10926-4-janusz.krzysztofik@linux.intel.com>
Message-ID: <156291715354.8011.16249562884496803790@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Fri, 12 Jul 2019 10:39:13 +0300
Subject: Re: [Intel-gfx] [PATCH v2 3/5] drm/i915: Propagate "_release"
 function name suffix down
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMDctMTEgMTA6MzE6NTUpCj4gUmVwbGFj
ZSBtaXhlZCAiX2ZpbmkiLyJfY2xlYW51cCIvIl9jbGVhbnVwX2h3IiBzdWZmaXhlcyBmb3VuZCBp
biBuYW1lcwo+IG9mIGZ1Y250aW9ucyBjYWxsZWQgZnJvbSBpOTE1X2RyaXZlcl9yZWxlYXNlKCkg
d2l0aCAiX3JlbGVhc2UiIHN1ZmZpeAogICAgICBeLSB0eXBvCgpSZWdhcmRzLCBKb29uYXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
