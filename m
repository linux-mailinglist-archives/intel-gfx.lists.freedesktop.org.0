Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FE1222983
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 19:21:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 548016EC8B;
	Thu, 16 Jul 2020 17:21:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2C396EC8B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 17:21:10 +0000 (UTC)
IronPort-SDR: wWXKq8slpXUW/wInZ/0i9Vhg/f9y4+XO9rWjL1eSfof+jZTGKcSSe5cqyF8by+cTx+jDLmmedv
 JDKr6WMpt1Rw==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="137571943"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="137571943"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:21:09 -0700
IronPort-SDR: 5S3ZnNBL8XmS7s3EcTpe4sdwrXUV51jeHMWA6I0Rr9/arj1u6j9d5uF3kYpl+6n3TvzxIMZ5NP
 4VayLQ9Avtug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="325204706"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 16 Jul 2020 10:21:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jul 2020 20:21:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 20:20:52 +0300
Message-Id: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/14] drm/i915: PCI ID cleanup
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkg
c3RhcnRlZCBieSBzcGxpdHRpbmcgQWxleGVpJ3MgU0tMIFBDSSBJRCBmaXggaW50bwpsb2dpY2Fs
IGNodW5rcywgYW5kIHRoZW4gb2NkIGtpY2tlZCBpbiBhIGJpdC4uLgoKQ2M6IEFsZXhlaSBQb2R0
ZWxlemhuaWtvdiA8YXBvZHRlbGVAZ21haWwuY29tPgoKQWxleGVpIFBvZHRlbGV6aG5pa292ICg0
KToKICBkcm0vaTkxNTogVXBkYXRlIEhhc3dlbGwgUENJIElEcwogIGRybS9pOTE1OiBSZWNsYXNz
aWZ5IFNLTCAweDE5MmEgYXMgR1QzCiAgZHJtL2k5MTU6IFJlY2xhc3NpZnkgU0tMIDB4MTkyMyBh
bmQgMHgxOTI3IGFzIFVMVAogIGRybS9pOTE1OiBBZGQgU0tMIEdUMS41IFBDSSBJRHMKClZpbGxl
IFN5cmrDpGzDpCAoMTApOgogIGRybS9pOTE1OiBUcnkgdG8gZml4IHRoZSBTS0wgR1QzLzQgdnMu
IEdUM2UvNGUgY29tbWVudHMKICBkcm0vaTkxNTogT2NkIHRoZSBIU1cgUENJIElEIGhleCBudW1i
ZXJzCiAgZHJtL2k5MTU6IFNvcnQgSFNXIFBDSSBJRHMKICBkcm0vaTkxNTogU29ydCBTS0wgUENJ
IElEcwogIGRybS9pOTE1OiBTb3J0IEtCTCBQQ0kgSURzCiAgZHJtL2k5MTU6IFNvcnQgQ01MIFBD
SSBJRHMKICBkcm0vaTkxNTogU29ydCBDRkwgUENJIElEcwogIGRybS9pOTE1OiBTb3J0IENOTCBQ
Q0kgSURzCiAgZHJtL2k5MTU6IFNvcnQgSUNMIFBDSSBJRHMKICBkcm0vaTkxNTogU29ydCBFSEwv
SlNMIFBDSSBJRHMKCiBpbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIHwgMTQxICsrKysrKysrKysr
KysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNzIgaW5zZXJ0aW9u
cygrKSwgNjkgZGVsZXRpb25zKC0pCgotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
