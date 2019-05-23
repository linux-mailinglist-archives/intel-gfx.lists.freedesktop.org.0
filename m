Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A68E28E13
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 01:51:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 451BA89FC9;
	Thu, 23 May 2019 23:51:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 42C2989FC9;
 Thu, 23 May 2019 23:51:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3966FA0019;
 Thu, 23 May 2019 23:51:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 23 May 2019 23:51:48 -0000
Message-ID: <20190523235148.12608.49006@emeril.freedesktop.org>
References: <20190523233049.28020-1-michal.wajdeczko@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190523233049.28020-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_GuC_32=2E0=2E3_=28rev5=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogR3VDIDMyLjAuMyAocmV2NSkKVVJMICAgOiBo
dHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzU4NzYwLwpTdGF0ZSA6IHdh
cm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKNDky
YTMyYTE4Y2UxIGRybS9pOTE1L2d1YzogQ2hhbmdlIHBsYXRmb3JtIGRlZmF1bHQgR3VDIG1vZGUK
ZTU2M2U5MDMyYjcwIGRybS9pOTE1L2d1YzogRG9uJ3QgYWxsb3cgR3VDIHN1Ym1pc3Npb24KZGFi
OGM1Nzg3MDhlIGRybS9pOTE1L2d1YzogVXBkYXRlIEd1QyBmaXJtd2FyZSB2ZXJzaW9ucyBhbmQg
bmFtZXMKN2FiMTJjYzAwMmExIGRybS9pOTE1L2d1YzogVXBkYXRlIEd1QyBmaXJtd2FyZSBDU1Mg
aGVhZGVyCjY2YzcwYTZhNzlhMCBkcm0vaTkxNS9ndWM6IFVwZGF0ZSBHdUMgYm9vdCBwYXJhbWV0
ZXJzCjhkYWRhZGZkOGQzYyBkcm0vaTkxNS9ndWM6IFVwZGF0ZSBzdXNwZW5kL3Jlc3VtZSBwcm90
b2NvbApiYWJkYzc0ZjcxZWMgZHJtL2k5MTUvZ3VjOiBVcGRhdGUgR3VDIHNhbXBsZS1mb3JjZXdh
a2UgY29tbWFuZAo3YWZhOTExOTU0OGQgZHJtL2k5MTUvZ3VjOiBVcGRhdGUgR3VDIEFEUyBvYmpl
Y3QgZGVmaW5pdGlvbgplZTFiMWNiMDQwNzEgZHJtL2k5MTUvZ3VjOiBSZXNldCBHdUMgQURTIGR1
cmluZyBzYW5pdGl6ZQo0NTgzMTM1Mzg5NGUgZHJtL2k5MTUvZ3VjOiBBbHdheXMgYXNrIEd1QyB0
byB1cGRhdGUgcG93ZXIgZG9tYWluIHN0YXRlcwpmMDRlNmQzNzNiYTkgZHJtL2k5MTUvZ3VjOiBE
ZWZpbmUgR3VDIGZpcm13YXJlIHZlcnNpb24gZm9yIEdlbWluaWxha2UKZThlMGRjNWI5YzhmIGRy
bS9pOTE1L2h1YzogRGVmaW5lIEh1QyBmaXJtd2FyZSB2ZXJzaW9uIGZvciBHZW1pbmlsYWtlCjEw
ZjI5ZWNmMjZlMSBkcm0vaTkxNS9ndWM6IE5ldyBHdUMgaW50ZXJydXB0IHJlZ2lzdGVyIGZvciBH
ZW4xMQpjMTIxMTM5NDAxN2UgZHJtL2k5MTUvZ3VjOiBOZXcgR3VDIHNjcmF0Y2ggcmVnaXN0ZXJz
IGZvciBHZW4xMQo0MzI1MTgxYzhjOWUgZHJtL2k5MTUvaHVjOiBOZXcgSHVDIHN0YXR1cyByZWdp
c3RlciBmb3IgR2VuMTEKYWIyYzZhMzMzZjQ5IGRybS9pOTE1L2d1YzogQ3JlYXRlIHZmdW5jcyBm
b3IgdGhlIEd1QyBpbnRlcnJ1cHRzIGNvbnRyb2wgZnVuY3Rpb25zCjNmNjgyZjJiMDFhYyBkcm0v
aTkxNS9ndWM6IENvcnJlY3RseSBoYW5kbGUgR3VDIGludGVycnVwdHMgb24gR2VuMTEKZWM3Yjg4
NWY4ODUxIGRybS9pOTE1L2d1YzogVXBkYXRlIEd1QyBDVEIgcmVzcG9uc2UgZGVmaW5pdGlvbgo3
ZTk3YTMxYmEwZjkgZHJtL2k5MTUvZ3VjOiBFbmFibGUgR3VDIENUQiBjb21tdW5pY2F0aW9uIG9u
IEdlbjExCjU0NzQzNDhhZDBkNSBkcm0vaTkxNS9ndWM6IERlZmluZSBHdUMgZmlybXdhcmUgdmVy
c2lvbiBmb3IgSWNlbGFrZQozYTQ3MmUzNjllYzIgZHJtL2k5MTUvaHVjOiBEZWZpbmUgSHVDIGZp
cm13YXJlIHZlcnNpb24gZm9yIEljZWxha2UKYWI5MzRjOGRkNGI1IEhBWDogdHVybiBvbiBHdUMv
SHVDIGF1dG8gbW9kZQotOjc6IFdBUk5JTkc6Q09NTUlUX01FU1NBR0U6IE1pc3NpbmcgY29tbWl0
IGRlc2NyaXB0aW9uIC0gQWRkIGFuIGFwcHJvcHJpYXRlIG9uZQoKdG90YWw6IDAgZXJyb3JzLCAx
IHdhcm5pbmdzLCAwIGNoZWNrcywgMTYgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
