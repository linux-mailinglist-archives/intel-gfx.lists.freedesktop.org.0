Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AF8348288
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 21:05:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46A836EA8D;
	Wed, 24 Mar 2021 20:05:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 839DB6EA70;
 Wed, 24 Mar 2021 20:05:28 +0000 (UTC)
IronPort-SDR: 7b9gynNYxgE0L2vpBw4qfD5U9RnQyxSPUKleBZMz4cJAUn0lLOG8xokeWc9YZtVZ/FlZaaA6Q8
 YixC14GoGetQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9933"; a="188482323"
X-IronPort-AV: E=Sophos;i="5.81,275,1610438400"; d="scan'208";a="188482323"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 13:05:23 -0700
IronPort-SDR: 3qF6P+IHH3ft8C++3oxDVGpGjM5cZ+nt0RWeBSZdvYu1OX/I7Rr39JgRLol3bPOk1xzoshOEJu
 lsf+EBXA6E5A==
X-IronPort-AV: E=Sophos;i="5.81,275,1610438400"; d="scan'208";a="391423630"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 13:05:22 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 24 Mar 2021 13:04:58 -0700
Message-Id: <20210324200502.1731265-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: missing workarounds and refactors
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TWlzc2luZyBXQXMgYW5kIHJlbGF0ZWQgcmVmYWN0b3JzLgoKQ2F6IFlva295YW1hICgyKToKICBk
cm0vaTkxNS9nZW4xMjogQWRkIHJlY29tbWVuZGVkIGhhcmR3YXJlIHR1bmluZyB2YWx1ZQogIGRy
bS9pOTE1L2ljbDogYWRkIFdhXzIyMDEwMjcxMDIxIGZvciBhbGwgZ2VuMTEKCkpvc8OpIFJvYmVy
dG8gZGUgU291emEgKDEpOgogIGRybS9pOTE1OiBNb3ZlIFdhXzE2MDExMTYzMzM3IHRvIGdlbjEy
X2N0eF93b3JrYXJvdW5kc19pbml0KCkKClN3YXRoaSBEaGFuYXZhbnRocmkgKDEpOgogIGRybS9p
OTE1OiBBZGQgV2FfMTQwMTEwNjA2NDkKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jIHwgOTcgKysrKysrKysrKysrKystLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgIDMgKwogMiBmaWxlcyBjaGFuZ2VkLCA2NyBp
bnNlcnRpb25zKCspLCAzMyBkZWxldGlvbnMoLSkKCi0tIAoyLjMxLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
