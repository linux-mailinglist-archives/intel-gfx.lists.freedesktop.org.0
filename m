Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 339472FCB37
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 07:57:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 017466E134;
	Wed, 20 Jan 2021 06:57:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA2646E134
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 06:57:24 +0000 (UTC)
IronPort-SDR: 53DR8ZS1TZl8VQI0q2v8DsOTsgTbglbmmQFdkwDrD+LzbmZFkqXja46s1fXakmBZsoR7eqN5ns
 WS1ZI6z+nUww==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="178277601"
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="178277601"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 22:57:24 -0800
IronPort-SDR: 1msValiIU8XbHVJM2c1P7NIwl5MyGP2PKJqiuS4bhvI+VKB7hXY2726izRIFNXyXnVN1svzQJx
 HF3Fq1eJGRvQ==
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="402643532"
Received: from tsengwil-desk1.itwn.intel.com (HELO gar) ([10.5.224.21])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 22:57:23 -0800
From: William Tseng <william.tseng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Jan 2021 15:00:13 +0800
Message-Id: <20210120070013.28100-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] [v2] x86/gpu: add JSL stolen memory support
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
Cc: William Tseng <william.tseng@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBoYXMgYSBkZXBlbmRlbmN5IG9uOgoiZHJtL2k5MTUvanNsOiBTcGxpdCBFSEwv
SlNMIHBsYXRmb3JtIGluZm8gYW5kIFBDSSBpZHMiCgpDYyA6IFRlamFzIFVwYWRoeWF5IDx0ZWph
c2t1bWFyeC5zdXJlbmRyYWt1bWFyLnVwYWRoeWF5QGludGVsLmNvbT4KQ2MgOiBNYXR0IFJvcGVy
IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYyA6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFdpbGxpYW0gVHNlbmcgPHdp
bGxpYW0udHNlbmdAaW50ZWwuY29tPgotLS0KIGFyY2gveDg2L2tlcm5lbC9lYXJseS1xdWlya3Mu
YyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvYXJj
aC94ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5jIGIvYXJjaC94ODYva2VybmVsL2Vhcmx5LXF1aXJr
cy5jCmluZGV4IGE0YjVhZjAzZGNjMS4uNTM0Y2MzZjc4YzZiIDEwMDY0NAotLS0gYS9hcmNoL3g4
Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMKKysrIGIvYXJjaC94ODYva2VybmVsL2Vhcmx5LXF1aXJr
cy5jCkBAIC01NDksNiArNTQ5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lk
IGludGVsX2Vhcmx5X2lkc1tdIF9faW5pdGNvbnN0ID0gewogCUlOVEVMX0NOTF9JRFMoJmdlbjlf
ZWFybHlfb3BzKSwKIAlJTlRFTF9JQ0xfMTFfSURTKCZnZW4xMV9lYXJseV9vcHMpLAogCUlOVEVM
X0VITF9JRFMoJmdlbjExX2Vhcmx5X29wcyksCisJSU5URUxfSlNMX0lEUygmZ2VuMTFfZWFybHlf
b3BzKSwKIAlJTlRFTF9UR0xfMTJfSURTKCZnZW4xMV9lYXJseV9vcHMpLAogCUlOVEVMX1JLTF9J
RFMoJmdlbjExX2Vhcmx5X29wcyksCiB9OwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
