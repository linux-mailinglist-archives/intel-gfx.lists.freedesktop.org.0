Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0623DB697
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 20:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A50C6E46D;
	Thu, 17 Oct 2019 18:54:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 389EF6E06E;
 Thu, 17 Oct 2019 18:54:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3281DA47D9;
 Thu, 17 Oct 2019 18:54:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 17 Oct 2019 18:54:07 -0000
Message-ID: <20191017185407.5566.93141@emeril.freedesktop.org>
References: <20191017154208.20128-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191017154208.20128-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/2=5D_drm/i915/execlists=3A_Do?=
 =?utf-8?q?n=27t_merely_skip_submission_if_maybe_timeslicing?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
Ml0gZHJtL2k5MTUvZXhlY2xpc3RzOiBEb24ndCBtZXJlbHkgc2tpcCBzdWJtaXNzaW9uIGlmIG1h
eWJlIHRpbWVzbGljaW5nClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82ODE2MC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVj
a3BhdGNoIG9yaWdpbi9kcm0tdGlwCjBkYThlNjc2NDQzMyBkcm0vaTkxNS9leGVjbGlzdHM6IERv
bid0IG1lcmVseSBza2lwIHN1Ym1pc3Npb24gaWYgbWF5YmUgdGltZXNsaWNpbmcKLToyNjk6IENI
RUNLOkxJTkVfU1BBQ0lORzogUGxlYXNlIGRvbid0IHVzZSBtdWx0aXBsZSBibGFuayBsaW5lcwoj
MjY5OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYzo2Mjg6CisK
KwoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAxIGNoZWNrcywgMzAzIGxpbmVzIGNoZWNr
ZWQKZTUwNTM1NTBjODZkIGRybS9pOTE1OiBEb24ndCBkaXNhYmxlIGludGVycnVwdHMgaW5kZXBl
bmRlbnRseSBvZiB0aGUgbG9jawoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
