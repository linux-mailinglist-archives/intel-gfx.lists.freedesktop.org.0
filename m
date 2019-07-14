Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A67867F01
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Jul 2019 14:46:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42B4F89973;
	Sun, 14 Jul 2019 12:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2BBB89973
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Jul 2019 12:46:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17285395-1500050 for multiple; Sun, 14 Jul 2019 13:46:29 +0100
MIME-Version: 1.0
To: Heiner Kallweit <hkallweit1@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <eeae3226-4bdf-3d90-2651-cb75e91e6f14@gmail.com>
References: <f4d7d506-bed5-c205-8532-0d360f9eee04@gmail.com>
 <09346773-8023-9c32-7650-48daa4ec546c@gmail.com>
 <156310765929.9436.10195271706258664728@skylake-alporthouse-com>
 <eeae3226-4bdf-3d90-2651-cb75e91e6f14@gmail.com>
Message-ID: <156310838731.9436.10439630434196784138@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 14 Jul 2019 13:46:27 +0100
Subject: Re: [Intel-gfx] NPE in i915_gemfs_init
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBIZWluZXIgS2FsbHdlaXQgKDIwMTktMDctMTQgMTM6Mzk6MTUpCj4gT24gMTQuMDcu
MjAxOSAxNDozNCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGluZyBIZWluZXIgS2FsbHdl
aXQgKDIwMTktMDctMTMgMTI6MTI6NTYpCj4gPj4gSSBkZWJ1Z2dlZCBhIGxpdHRsZSBiaXQgYW5k
IHJlbW91bnRfZnMgaXNuJ3Qgc2V0IGluIHNiLT5zX29wLgo+ID4+IFRoZSBmb2xsb3dpbmcgYXQg
bGVhc3QgYXZvaWRzIHRoZSBOUEUsIG5vdCBzdXJlIHdoZXRoZXIgaXQncyB0aGUgY29ycmVjdCBm
aXguCj4gPiAKPiA+IEkgdGFrZSBpdCB5b3UgZG9uJ3QgaGF2ZSBDT05GSUdfVE1QRlMgc2V0Pwo+
ID4gCj4gVGhpcyBvcHRpb24gaXMgc2V0Ogo+IAo+IFtyb290QHpvdGFjIGxpbnV4LW5leHRdIyBn
cmVwIFRNUEZTIC5jb25maWcKPiBDT05GSUdfREVWVE1QRlM9eQo+IENPTkZJR19ERVZUTVBGU19N
T1VOVD15Cj4gQ09ORklHX1RNUEZTPXkKPiBDT05GSUdfVE1QRlNfUE9TSVhfQUNMPXkKPiBDT05G
SUdfVE1QRlNfWEFUVFI9eQoKTm93IHRoYXQncyB3ZWlyZCwgYXMKCnN0YXRpYyBjb25zdCBzdHJ1
Y3Qgc3VwZXJfb3BlcmF0aW9ucyBzaG1lbV9vcHMgPSB7CiAgICAgICAgLmFsbG9jX2lub2RlICAg
ID0gc2htZW1fYWxsb2NfaW5vZGUsCiAgICAgICAgLmZyZWVfaW5vZGUgICAgID0gc2htZW1fZnJl
ZV9pbl9jb3JlX2lub2RlLAogICAgICAgIC5kZXN0cm95X2lub2RlICA9IHNobWVtX2Rlc3Ryb3lf
aW5vZGUsCiNpZmRlZiBDT05GSUdfVE1QRlMKICAgICAgICAuc3RhdGZzICAgICAgICAgPSBzaG1l
bV9zdGF0ZnMsCiAgICAgICAgLnJlbW91bnRfZnMgICAgID0gc2htZW1fcmVtb3VudF9mcywKICAg
ICAgICAuc2hvd19vcHRpb25zICAgPSBzaG1lbV9zaG93X29wdGlvbnMsCiNlbmRpZgogICAgICAg
IC5ldmljdF9pbm9kZSAgICA9IHNobWVtX2V2aWN0X2lub2RlLAogICAgICAgIC5kcm9wX2lub2Rl
ICAgICA9IGdlbmVyaWNfZGVsZXRlX2lub2RlLAogICAgICAgIC5wdXRfc3VwZXIgICAgICA9IHNo
bWVtX3B1dF9zdXBlciwKI2lmZGVmIENPTkZJR19UUkFOU1BBUkVOVF9IVUdFX1BBR0VDQUNIRQog
ICAgICAgIC5ucl9jYWNoZWRfb2JqZWN0cyAgICAgID0gc2htZW1fdW51c2VkX2h1Z2VfY291bnQs
CiAgICAgICAgLmZyZWVfY2FjaGVkX29iamVjdHMgICAgPSBzaG1lbV91bnVzZWRfaHVnZV9zY2Fu
LAojZW5kaWYKfTsKCnRoZSBvbmx5IHdheSBpdCBzaG91bGQgYmUgdW5zZXQgd2FzIGlmICFDT05G
SUdfVE1QRlMuCgpIbW0sIHdlIGV2ZW4gc2VsZWN0IFRNUEZTIHNvIGl0IHNob3VsZCBuZXZlciBi
ZSBhYnNlbnQuCgpTbyB0aGUgcXVlc3Rpb24gaXMgd2hhdCBtb3VudCBkaWQgd2UgZ2V0IGlmIGl0
IHdhcyBub3QgYSBzaG1lbWZzIG9uZT8KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
