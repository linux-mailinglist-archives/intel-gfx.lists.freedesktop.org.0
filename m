Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CE1309B3
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 09:53:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA4F989255;
	Fri, 31 May 2019 07:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0B2989255
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 07:53:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 00:53:56 -0700
X-ExtLoop1: 1
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.94.174])
 by orsmga005.jf.intel.com with ESMTP; 31 May 2019 00:53:54 -0700
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190530082358.13663-1-chris@chris-wilson.co.uk>
References: <20190530082358.13663-1-chris@chris-wilson.co.uk>
Message-ID: <155928923387.5971.8056698264822689967@gepeat-mobl.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Fri, 31 May 2019 10:53:54 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Drop non-NULL
 llist_for_each_entry_safe check for
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMzAgMTE6MjM6NTgpCj4gU2luY2UgdGhlIG5l
eHQgZW50cnkgaXMgYW4gb2Zmc2V0IGZyb20gYSBwb2ludGVyLCBpdCBjYW4gbm90IGJlIE5VTEwu
Cj4gRm9yIHNpbXBsaWNpdHksIGRyb3AgdGhlIGV4dHJhIGNvbmRpdGlvbmFsIGJlZm9yZSBjYWxs
aW5nIGNvbmRfcmVzY2hlZCgpCj4gCj4gUmVwb3J0ZWQtYnk6IERhbiBDYXJwZW50ZXIgPGRhbi5j
YXJwZW50ZXJAb3JhY2xlLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KClJldmlld2VkLWJ5OiBKb29uYXMgTGFodGluZW4gPGpvb25h
cy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CgpSZWdhcmRzLCBKb29uYXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
