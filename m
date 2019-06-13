Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5E5432C3
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 07:17:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66CA08929D;
	Thu, 13 Jun 2019 05:17:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D834889296;
 Thu, 13 Jun 2019 05:17:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0A69A47DE;
 Thu, 13 Jun 2019 05:17:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sam Ravnborg" <sam@ravnborg.org>
Date: Thu, 13 Jun 2019 05:17:38 -0000
Message-ID: <20190613051738.21002.8620@emeril.freedesktop.org>
References: <20190613021054.cdewdb3azy6zuoyw@smtp.gmail.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190613021054.cdewdb3azy6zuoyw@smtp.gmail.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/drm=5Fvblank=3A_Change_EINVAL_by_the_correct_errno_=28re?=
 =?utf-8?b?djMp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2RybV92Ymxhbms6IENoYW5nZSBFSU5W
QUwgYnkgdGhlIGNvcnJlY3QgZXJybm8gKHJldjMpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy81MTE0Ny8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5
ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjg1MzRhNjBhYjQzYiBEcm9wIHVz
ZSBvZiBEUk1fV0FJVF9PTigpIFtXYXM6IGRybS9kcm1fdmJsYW5rOiBDaGFuZ2UgRUlOVkFMIGJ5
IHRoZSBjb3JyZWN0IGVycm5vXQotOjE2OiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQ
b3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVtIDc1
IGNoYXJzIHBlciBsaW5lKQojMTY6IAo+IHNvbWUgYWN0aW9uLiBJbiBwYXJ0aWN1bGFyLCB0aGUg
dmFsaWRhdGlvbiBvZiDigJxpZiAoIWRldi0+aXJxX2VuYWJsZWQp4oCdCgotOjg5OiBFUlJPUjpH
SVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2Nv
bW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQg
ZmF0YWw6IGJhZCBvICgiYTk5NDliMTQ2MDgyYmNhYTEiKScKIzg5OiAKY29tbWl0IDE3YjExOWIw
MjQ2NzM1NjE5OGI1N2JjYTk5NDliMTQ2MDgyYmNhYTEKCi06MTA1OiBXQVJOSU5HOkJBRF9TSUdO
X09GRjogRG8gbm90IHVzZSB3aGl0ZXNwYWNlIGJlZm9yZSBTaWduZWQtb2ZmLWJ5OgojMTA1OiAK
ICAgIFNpZ25lZC1vZmYtYnk6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KCi06MTA2
OiBXQVJOSU5HOkJBRF9TSUdOX09GRjogRG8gbm90IHVzZSB3aGl0ZXNwYWNlIGJlZm9yZSBDYzoK
IzEwNjogCiAgICBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4
LmludGVsLmNvbT4KCi06MTA3OiBXQVJOSU5HOkJBRF9TSUdOX09GRjogRG8gbm90IHVzZSB3aGl0
ZXNwYWNlIGJlZm9yZSBDYzoKIzEwNzogCiAgICBDYzogTWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJp
cGFyZEBib290bGluLmNvbT4KCi06MTA4OiBXQVJOSU5HOkJBRF9TSUdOX09GRjogRG8gbm90IHVz
ZSB3aGl0ZXNwYWNlIGJlZm9yZSBDYzoKIzEwODogCiAgICBDYzogU2VhbiBQYXVsIDxzZWFuQHBv
b3JseS5ydW4+CgotOjEwOTogV0FSTklORzpCQURfU0lHTl9PRkY6IERvIG5vdCB1c2Ugd2hpdGVz
cGFjZSBiZWZvcmUgQ2M6CiMxMDk6IAogICAgQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51
eC5pZT4KCi06MTEwOiBXQVJOSU5HOkJBRF9TSUdOX09GRjogRG8gbm90IHVzZSB3aGl0ZXNwYWNl
IGJlZm9yZSBDYzoKIzExMDogCiAgICBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNo
PgoKLToxMzM6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNob3VsZCBt
YXRjaCBvcGVuIHBhcmVudGhlc2lzCiMxMzM6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9kcm1fdmJs
YW5rLmM6MTY3MToKKwkJcmV0ID0gd2FpdF9ldmVudF9pbnRlcnJ1cHRpYmxlX3RpbWVvdXQodmJs
YW5rLT5xdWV1ZSwKKwkJCXZibGFua19wYXNzZWQoZHJtX3ZibGFua19jb3VudChkZXYsIHBpcGUp
LCByZXFfc2VxKSB8fAoKdG90YWw6IDEgZXJyb3JzLCA3IHdhcm5pbmdzLCAxIGNoZWNrcywgNDEg
bGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
