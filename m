Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9047A306CF0
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 06:30:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 970186E8CD;
	Thu, 28 Jan 2021 05:30:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B356F6E85B
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 05:30:35 +0000 (UTC)
IronPort-SDR: Lo082Jq36dQikYLad5NmMC9WFfiIDtUGRRfxgRB0Namv5UHc0D/QaV7S0zoC2lCQ0l8ko9GhHn
 M2Ig7ZtNfGNQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="167279148"
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="167279148"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 21:30:32 -0800
IronPort-SDR: XiBlzs1tWdEiT4i85sgpOqKZhjafd4WrhmZV3p7cIyALb1RQES3/niog/It/FLSikSVWKUuqdz
 dVlVjte1KCqQ==
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="430386054"
Received: from kamathas-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.24.125])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 21:30:32 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 21:30:15 -0800
Message-Id: <20210128053024.23540-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/9] Final set of patches for ADLS enabling
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

VGhlc2UgYXJlIHRoZSBmaW5hbCBzZXQgb2YgcGF0Y2hlcyByZXF1aXJlZCBmb3IgZW5hYmxpbmcg
QURMLVMuIFRoZQpwYXRjaGVzIGhhdmUgYmVlbiB0ZXN0ZWQgb24gcGxhdGZvcm0gYW5kIGFsbCBk
aXNwbGF5IG91dHB1dHMgYXJlCndvcmtpbmcuCgp2MjogQWRkcmVzcyBtaW5vciBuaXRwaWNrcyBw
cm92aWRlZCBieSBtZHJvcGVyLgoKUGF0Y2ggImRybS9pOTE1L2FkbF9zOiBNQ0hCQVIgbWVtb3J5
IGluZm8gcmVnaXN0ZXJzIGFyZSBtb3ZlZCIKY2FuIGJlIGlnbm9yZWQgYXMgSm9zZSdzIHN1Ym1p
c3Npb24gCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvODYwOTIvCmFs
bG93cyB1cyB0byBmZXRjaCBkcmFtIGluZm8gZnJvbSBwY29kZS4KCkN1cnJlbnRseSBpbiBoaXMg
c2VyaWVzLCBJIGRpZG4ndCBzZWUgcmVtb3ZhbCBvZgpza2xfZHJhbV9nZXRfY2hhbm5lbHNfaW5m
bygpLiBTbyBqdXN0IHRvIGdldCBjbGVhciByZXN1bHRzIGZyb20gQ0ksIEkKaGF2ZSBpbmNsdWRl
ZCB0aGUgTUNIQkFSIHBhdGNoIGluIHNlcmllcy4KCkFkaXR5YSBTd2FydXAgKDIpOgogIGRybS9p
OTE1L2FkbF9zOiBBZGQgZGlzcGxheSBXQXMgZm9yIEFETC1TCiAgZHJtL2k5MTUvYWRsX3M6IEFk
ZCBHVCBhbmQgQ1RYIFdBcyBmb3IgQURMLVMKCkFudXNoYSBTcml2YXRzYSAoMSk6CiAgZHJtL2k5
MTUvYWRsX3M6IExvYWQgRE1DCgpDYXogWW9rb3lhbWEgKDEpOgogIGRybS9pOTE1L2FkbF9zOiBN
Q0hCQVIgbWVtb3J5IGluZm8gcmVnaXN0ZXJzIGFyZSBtb3ZlZAoKSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSAoMSk6CiAgZHJtL2k5MTUvZGlzcGxheTogQWRkIEhBU19EMTJfUExBTkVfTUlOSU1JWkFU
SU9OCgpMdWNhcyBEZSBNYXJjaGkgKDEpOgogIGRybS9pOTE1L2FkbF9zOiBBZGQgcG93ZXIgd2Vs
bHMKCk1hdHQgUm9wZXIgKDIpOgogIGRybS9pOTE1L2FkbF9zOiBVcGRhdGUgUEhZX01JU0MgcHJv
Z3JhbW1pbmcKICBkcm0vaTkxNS9hZGxfczogUmUtdXNlIFRHTCBHdUMvSHVDIGZpcm13YXJlCgpU
ZWphcyBVcGFkaHlheSAoMSk6CiAgZHJtL2k5MTUvYWRsX3M6IFVwZGF0ZSBtZW1vcnkgYmFuZHdp
ZHRoIHBhcmFtZXRlcnMKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMg
ICAgICAgfCAxMSArKysrKy0KIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19w
aHkuYyAgICB8IDEyICsrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3NyLmMgICAgICB8IDEwICsrKysrLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wb3dlci5jICAgIHwgIDkgKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfc3ByaXRlLmMgICB8ICA2ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMgICB8IDM0ICsrKysrKysrKysrKy0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgICAgICB8ICA0ICsrLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgIDQgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jICAgICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaCAgICAgICAgICAgICAgIHwgIDUgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kZXZpY2VfaW5mby5jICAgICAgfCAgOCArKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZHJhbS5jICAgICAgICAgICAgIHwgMjQgKysrKysrKysrLS0tLQogMTIgZmlsZXMgY2hh
bmdlZCwgOTQgaW5zZXJ0aW9ucygrKSwgMzUgZGVsZXRpb25zKC0pCgotLSAKMi4yNy4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
