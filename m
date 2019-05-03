Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CC312584
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 02:34:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A9E189496;
	Fri,  3 May 2019 00:34:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BC4C5893CD;
 Fri,  3 May 2019 00:34:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B2315A011C;
 Fri,  3 May 2019 00:34:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 03 May 2019 00:34:37 -0000
Message-ID: <20190503003437.26885.81387@emeril.freedesktop.org>
References: <20190502232648.4450-1-imre.deak@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190502232648.4450-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Add_support_for_asynchronous_display_power_disab?=
 =?utf-8?q?ling?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEFkZCBzdXBwb3J0IGZvciBh
c3luY2hyb25vdXMgZGlzcGxheSBwb3dlciBkaXNhYmxpbmcKVVJMICAgOiBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYwMjQyLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1
bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKNTFkNTk3ZWQ0MTM1IGRy
bS9pOTE1OiBBZGQgc3VwcG9ydCBmb3IgdHJhY2tpbmcgd2FrZXJlZnMgdy9vIHBvd2VyLW9uIGd1
YXJhbnRlZQoxMDVkZWE4YWQwZGMgZHJtL2k5MTU6IFZlcmlmeSBwb3dlciBkb21haW5zIHN0YXRl
IGR1cmluZyBzdXNwZW5kIGluIGFsbCBjYXNlcwplOTZjOTUyMmRiN2IgZHJtL2k5MTU6IEFkZCBz
dXBwb3J0IGZvciBhc3luY2hyb25vdXMgZGlzcGxheSBwb3dlciBkaXNhYmxpbmcKNTk3M2Y3OGNl
Njk5IGRybS9pOTE1OiBEaXNhYmxlIHBvd2VyIGFzeW5jaHJvbm91c2x5IGR1cmluZyBEUCBBVVgg
dHJhbnNmZXJzCjQ2YTIyN2E2Y2I5MCBkcm0vaTkxNTogV0FSTiBmb3IgZURQIGVuY29kZXJzIGlu
IGludGVsX2RwX2RldGVjdF9kcGNkKCkKMDMyZDRjNDBjZmZlIGRybS9pOTE1OiBSZW1vdmUgdGhl
IHVubmVlZGVkIEFVWCBwb3dlciByZWYgZnJvbSBpbnRlbF9kcF9kZXRlY3QoKQo1ZWQzYmFjZWY5
NzAgZHJtL2k5MTU6IFJlbW92ZSB0aGUgdW5uZWVkZWQgQVVYIHBvd2VyIHJlZiBmcm9tIGludGVs
X2RwX2hwZF9wdWxzZSgpCi06MTI6IEVSUk9SOkdJVF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0
IGNvbW1pdCBkZXNjcmlwdGlvbiBzdHlsZSAnY29tbWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8
dGl0bGUgbGluZT4iKScgLSBpZTogJ2NvbW1pdCAxYzc2N2IzMzliMzkgKCJkcm0vaTkxNTogdGFr
ZSBkaXNwbGF5IHBvcnQgcG93ZXIgZG9tYWluIGluIERQIEhQRCBoYW5kbGVyIiknCiMxMjogCmNv
bW1pdCAxYzc2N2IzMzliMzkzOGIxOTA3NmZmZGM5ZDcwYWExZTQyMzVhNDViCgotOjIxOiBFUlJP
UjpHSVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUg
J2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21t
aXQgN2QyM2UzYzM3YmIzICgiZHJtL2k5MTU6IENsZWFuaW5nIHVwIGludGVsX2RwX2hwZF9wdWxz
ZSIpJwojMjE6IApjb21taXQgN2QyM2UzYzM3YmIzZmM2OTUyZGM4NDAwN2VlNjBjYjUzM2ZkMmQ1
YwoKdG90YWw6IDIgZXJyb3JzLCAwIHdhcm5pbmdzLCAwIGNoZWNrcywgNjggbGluZXMgY2hlY2tl
ZAplNTk3NjE4YTc2MzQgZHJtL2k5MTU6IFJlcGxhY2UgdXNlIG9mIFBMTFMgcG93ZXIgZG9tYWlu
IHdpdGggRElTUExBWV9DT1JFIGRvbWFpbgowOGNlMGYzNDMzZDEgZHJtL2k5MTU6IEF2b2lkIHRh
a2luZyB0aGUgUFBTIGxvY2sgZm9yIG5vbi1lRFAvVkxWL0NIVgpiYTk5MDI1M2Q1ZDggZHJtL2k5
MTU6IEFzc2VydCB0aGF0IFR5cGVDIHBvcnRzIGFyZSBub3QgdXNlZCBmb3IgZURQCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
