Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D39E23A2769
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 10:49:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD896EC8D;
	Thu, 10 Jun 2021 08:49:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02A646EC8C;
 Thu, 10 Jun 2021 08:49:31 +0000 (UTC)
IronPort-SDR: 0kVp+JGlO1BaOaid1sieKSW9H0iY/QQBJHZwtTkCgZkTXerX8+xJrcLL7z6Da6qgvf2U6oX/Oo
 8vsDWh/fLyrg==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="203411679"
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="203411679"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 01:49:20 -0700
IronPort-SDR: DjePGo5Ugz/ZAF9CHBgwShRBk9w9eKj6FMIvVyEXlobnCU9eqZy/Ld/IYULTTgDhVWFOKdHBRM
 QkrQUWAiU0EQ==
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="402790762"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 01:49:18 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1lrGP7-0008Eq-UL; Thu, 10 Jun 2021 11:51:09 +0300
Date: Thu, 10 Jun 2021 11:51:09 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: "Srinivas, Vidya" <vidya.srinivas@intel.com>
Message-ID: <YMHSfaK9We4Mzh54@platvala-desk.ger.corp.intel.com>
References: <1622176025-12499-1-git-send-email-vidya.srinivas@intel.com>
 <CO6PR11MB55693230CBD2262DDCF5A0C18D379@CO6PR11MB5569.namprd11.prod.outlook.com>
 <80bed39a-e899-f211-ae2f-279312b52084@gmail.com>
 <BY5PR11MB4372F22C0AF1AEC2CD3A20D089379@BY5PR11MB4372.namprd11.prod.outlook.com>
 <BY5PR11MB437298B9B622322E6663495E89379@BY5PR11MB4372.namprd11.prod.outlook.com>
 <dc3df242-57b9-13f9-c5ab-42acadc39c86@gmail.com>
 <BY5PR11MB43727C61A55E03DA6EE2C53589359@BY5PR11MB4372.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BY5PR11MB43727C61A55E03DA6EE2C53589359@BY5PR11MB4372.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] [RFC] tests/kms_big_fb:
 Wait for vblank before collecting CRC
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Lin,
 Charlton" <charlton.lin@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMTAsIDIwMjEgYXQgMDg6Mzg6NDJBTSArMDAwMCwgU3Jpbml2YXMsIFZpZHlh
IHdyb3RlOgo+IEhlbGxvIEp1aGEtUGVra2EsCj4gCj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Nlcmllcy85MDM4OS8jcmV2NyBzaG93cyBQQVNTIGZvciBhbGwgQ0kuCj4gSG93
ZXZlciBJIGRvbuKAmXQgc2VlIGttc19iaWdfZmIgYWxsIHRoZSBzdWJ0ZXN0cyBydW5uaW5nIGlu
IENJLiBJbiB0aGUgbG9ncyBJIHNlZSBwYXNzIGZvciBsaW5lYXItMzJicHAtcm90YXRlLTAKClRo
ZSBkZWZhdWx0IHZpZXcgaW4gdGhlIENJIHJlc3VsdHMgb25seSBzaG93cyB0ZXN0cyB0aGF0IGhh
dmUKaXNzdWVzLiAidmlldyAtPiBzaGFyZHMgYWxsIiBmcm9tIHRoZSB0b3Agc2hvd3MgYWxsIHRl
c3RzLgoKaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9JR1RQV181OTA3
L3NoYXJkcy1hbGwuaHRtbD90ZXN0ZmlsdGVyPWttc19iaWdfZmIKCgotLSAKUGV0cmkgTGF0dmFs
YQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
