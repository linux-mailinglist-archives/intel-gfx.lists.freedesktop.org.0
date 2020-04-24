Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A0A1B8207
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Apr 2020 00:25:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 670906E0DA;
	Fri, 24 Apr 2020 22:25:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from alexa-out-sd-01.qualcomm.com (alexa-out-sd-01.qualcomm.com
 [199.106.114.38])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6577E6E0DA;
 Fri, 24 Apr 2020 22:17:57 +0000 (UTC)
Received: from unknown (HELO ironmsg01-sd.qualcomm.com) ([10.53.140.141])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 24 Apr 2020 15:17:56 -0700
Received: from gurus-linux.qualcomm.com ([10.46.162.81])
 by ironmsg01-sd.qualcomm.com with ESMTP; 24 Apr 2020 15:17:56 -0700
Received: by gurus-linux.qualcomm.com (Postfix, from userid 383780)
 id D1A8C4C90; Fri, 24 Apr 2020 15:17:56 -0700 (PDT)
Date: Fri, 24 Apr 2020 15:17:56 -0700
From: Guru Das Srinagesh <gurus@codeaurora.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200424221756.GB31118@codeaurora.org>
References: <cover.1587523702.git.gurus@codeaurora.org>
 <4a3acf8673c08308848fb7ae73d992b6feb758d3.1587523702.git.gurus@codeaurora.org>
 <87ftctbe5l.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ftctbe5l.fsf@intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Mailman-Approved-At: Fri, 24 Apr 2020 22:25:51 +0000
Subject: Re: [Intel-gfx] [PATCH v13 01/11] drm/i915: Use 64-bit division
 macro
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
Cc: linux-pwm@vger.kernel.org, David Collins <collinsd@codeaurora.org>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Subbaraman Narayanamurthy <subbaram@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBcHIgMjQsIDIwMjAgYXQgMDk6MTc6NThBTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gVHVlLCAyMSBBcHIgMjAyMCwgR3VydSBEYXMgU3JpbmFnZXNoIDxndXJ1c0Bjb2Rl
YXVyb3JhLm9yZz4gd3JvdGU6Cj4gPiBTaW5jZSB0aGUgUFdNIGZyYW1ld29yayBpcyBzd2l0Y2hp
bmcgc3RydWN0IHB3bV9zdGF0ZS5kdXR5X2N5Y2xlJ3MKPiA+IGRhdGF0eXBlIHRvIHU2NCwgcHJl
cGFyZSBmb3IgdGhpcyB0cmFuc2l0aW9uIGJ5IHVzaW5nIERJVl9ST1VORF9VUF9VTEwKPiA+IHRv
IGhhbmRsZSBhIDY0LWJpdCBkaXZpZGVuZC4KPiA+Cj4gPiBUbzogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5s
YWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxp
bnV4LmllPgo+ID4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiA+IENjOiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiAiVmlsbGUgU3ly
asOkbMOkIiA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKPiA+Cj4gCj4gU3VwZXJmbHVvdXMgYmxhbmsgbGluZS4KCldpbGwgcmVtb3ZlLgoKPiAK
PiBBbnl3YXksIHBsZWFzZSBwcmVzZXJ2ZSB0aGUgZXhpc3RpbmcgYWNrcyBhbmQgcmV2aWV3cyBb
MV0gc28gcGVvcGxlCj4gZG9uJ3QgaGF2ZSB0byBkbyBpdCBhZ2Fpbi4KPiAKPiBCUiwKPiBKYW5p
Lgo+IAo+IFsxXSBodHRwOi8vbG9yZS5rZXJuZWwub3JnL3IvODdoN3lsZWIwaS5mc2ZAaW50ZWwu
Y29tCgpJIGRyb3BwZWQgeW91ciBBY2tlZC1ieSBhcyB0aGUgcGF0Y2ggaGFkIHRvIGNoYW5nZWQg
dG8gcmVzb2x2ZSBhIG1lcmdlCmNvbmZsaWN0IHdoZW4gSSByZWJhc2VkIHRvIHRpcC4gQ291bGQg
eW91IHBsZWFzZSByZS1yZXZpZXcgdGhpcyBwYXRjaD8KClRoYW5rIHlvdS4KCkd1cnUgRGFzLgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
