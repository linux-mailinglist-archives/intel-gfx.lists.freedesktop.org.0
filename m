Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D0F6CBC5F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 12:16:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CBC210E47D;
	Tue, 28 Mar 2023 10:16:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A3DB10E46D
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 10:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679998612; x=1711534612;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=noHXpM2XqlWiv6Xhp/Sz2ordSQnv5D7lRFfKFewyvEA=;
 b=IqVYh0LlsQa/VJqf87TDRJxGnk9gaC993H7jGNVc4VMZqZXH0v6pN44m
 yI4aV+h5iSn8vG46R3L97/neSWqyEPlZNEP+ZEd0Hf1ELcMYTy8qiGVi0
 o40KgeabIe0ufVWZ3uabIx2VqqSh7F/+bXPDHi1KV/LrMlhXNXcEW44jC
 1rb/qO2lm7jCu5+EjwOPJHeqy1cOMuIg1KI1qs1gl3LjvUyunhaXTF4W8
 JQXv7rc88sBgeZs/iLGdb+nEYXBaQRk9kiKO0FkGJiqsM91rZFHMmF5Vo
 m/H92LVDejU4RWDzz9DtS3xm5ujOp16MokoVWzGcx60D6UGisYs7Kr5Zg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="403139458"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="403139458"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 03:16:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="716442951"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="716442951"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 28 Mar 2023 03:16:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 03:16:51 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 03:16:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Mar 2023 03:16:50 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 28 Mar 2023 03:16:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CY7l1gqSUkCfQuB7rNYFbu9yg4xK/eVSkMYHIBDYakJCp+Gvj+o8KANcB/VD+sTP6CfBZjMiNdKxas3xy0C+uUAdx0KRURC3IF541oopPpNCLJiGe0l6214QkARoUngCTPJ2kHh1ilsS3wkBZMfIMtWXvIsuFoAIObmpmLfT4ta2mEdmP9Vxo2SYX8QmQMjYgR7ZkFCudKC5WOBcH6Ic351QgC2CikrbJFuiXlXyVc1mG2T/UR8L524sDVgv7dc/pd9NvNcczsUnq6nJf65QZ7K9BWEk9Z2IbNxxgj8UPC/ia9x2dgsGjKqpkvXqgJb/LVO5TStE+wXjpJB5AX+8bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=noHXpM2XqlWiv6Xhp/Sz2ordSQnv5D7lRFfKFewyvEA=;
 b=XiHK8ynm/WwAIhF/n6uoPvKKlORXMsIfB1A131vqMvJ02sXwc/d+G5G7ADBtbBaL9Yjw4vnBPL7sIm070R+xciL/2ewOCCrgdBPKx82g3ZHAtN9saR7/yP0/3wfUvi/MzlY4KyXsGpWbLXJkKBZlUPgy9cK8MGQBSYl0V+7wyZcCxdJWlS03ziXk/zYUcA/WV8ycO7jQeXHhicYmYDrvPNMKr+hU1pYHDs8yTIfBEeN5DtuOqgfhraW8wlan6RC9cce/W2T6dI98w1zv8TaZQCnxGuDUk8HK6vBx5CanzwE4Yt9kI2GuoMwvOgxbPd1rlTrodWECYg1TdHeCefCOhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH8PR11MB6779.namprd11.prod.outlook.com (2603:10b6:510:1ca::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.30; Tue, 28 Mar
 2023 10:16:48 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%6]) with mapi id 15.20.6178.041; Tue, 28 Mar 2023
 10:16:48 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 28/29] drm/i915: Remove TC PHY disconnect
 workaround
Thread-Index: AQHZXZLS09gtzz4d8U21XoHdnjFb+q8QAY/w
Date: Tue, 28 Mar 2023 10:16:48 +0000
Message-ID: <MW4PR11MB7054273D8118394DF9EA96E3EF889@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-29-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-29-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH8PR11MB6779:EE_
x-ms-office365-filtering-correlation-id: 46caf777-26bb-4c10-f289-08db2f758a98
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SUaj6E/NsNqv0UjEkXDKp/5Frvgr0XJhnu6n6d5yyieNRBb6d52e5dVXU+NN4wMgS7E8kmdVuIRwWjdGlPm/9OQ8zsBl/SSq5WGV/IAIpL/lQFf7W3e9hBC7H8vli6PT2ebqcK3THtUR73SbyL6bNtkyFxpR2lJV/Wg1ZaZ0JICHi4BmSo9RCRqCU7P6YdX6Xv7PWeuLmPmHTSDt9flRF4E2xREs8nxyFxKZPCHjoBWytsSGlfJWK887QEMALSRJYQLX2KXYv3cYrIRrsghG/64OBUM1Ko1ZRikx3wT+JQum7MhyTsWNvrSYU6L+tPIYO22D3DYuHhCqsUxqxjBKv4cK6loXQWajysJDJkTCMp/J45Jf/sjNup5qYS7EYQ1ZW0oJdSAJELUSv9c1dCh9HLRLtLgFR+JKGRL2mvW0yIK2Tu3c6S6WerzttsIGw0X1e97FJGiQUN0/Kwled8YQv91oF/+q4NjNuuX0fzBjfaDTPk4c1LMIPo02BtsoVHsoUu85bW02IhT5Ijhp1mdalTUzEJari501gqb3vunHnKjcRfL2cOe8IjappH2I6DqYEkmK9spBvjBXWmgwFy3X7O1teA24uEhydXiJJVZ/g0XtE3JATQ1sRgpt0Pegen8R
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(366004)(136003)(346002)(39860400002)(451199021)(316002)(110136005)(478600001)(52536014)(8936002)(122000001)(82960400001)(38070700005)(86362001)(5660300002)(66446008)(76116006)(2906002)(64756008)(38100700002)(66476007)(33656002)(8676002)(66946007)(66556008)(41300700001)(6506007)(186003)(55016003)(26005)(9686003)(53546011)(83380400001)(71200400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dW1OQmFaT0k2cjcvaEZ2NDNtUXJBOWkvYWFzUmtyYlBPTTZlV1F6U1lNWklr?=
 =?utf-8?B?MFFQWHNBSDNrTWdaeHJKR0NGWFdqUU82bHJaZFdsYmJzWkgzMXNIOVZFeC9l?=
 =?utf-8?B?aTVkNzNGd2ZGc1MySkNVbGNYYS9nU3VBbWh0VXRveHNCVlVPL253OFErcDVS?=
 =?utf-8?B?VG1sSTVBeWY5czVYYkc2bWVPa0lkUmJ5cHlXL2NuR2FhUFI1cnhWRitFaUNv?=
 =?utf-8?B?VDAxejJYRFJ2THhXQW44ZExHQVhNTmZxWGVrZCtxQndscjA1cVd3K014dkFZ?=
 =?utf-8?B?NVYraHBJRVNDeS84bmhSajdTVmowcWtmTFBkQTViMlllTW5UVWJTaS9XdU5N?=
 =?utf-8?B?U1UvOUF3NnpIL21CMEVVblFwWEdWVHovV0I2ZzI4KzI5cU50bGdtT1VSNDBx?=
 =?utf-8?B?Z0FmVFBWdHpLRzJCYitJWTRxQWdWUVFoMjN0aHRiNnpGK2pNczBzUWpGMlUw?=
 =?utf-8?B?bzJwZmhBUG85Y2IrYngzdk9qOFA3L0FwS0dodXkrOHJMVVpQZmRMbmRKRG9E?=
 =?utf-8?B?cktYc2J6RFQxM09QN1p4TU9nSzNGVFRybk11T1A1UVFkaVJQeGtwc3dlVllG?=
 =?utf-8?B?Q0ZKdGg5TVk5VTI3alBXZmYzMklXelR0TEdHTVZUWEFvWU54L3ZRNmZ2OEZx?=
 =?utf-8?B?NjNWcmhtSHF0eVRmSFFaZEU1ZjZ3MmJPVXU0Uy8rSCtFMDA0akVGWEhSeFlz?=
 =?utf-8?B?eHM4b3QzbkVBZkNGelp6OS9uamdxc0lScHhoK3FvNzZxQXZBdHNzQnlYQm94?=
 =?utf-8?B?T2JCMVpCOUoyNGVmSWFDM05MK0RLd2pUWDVXMUEwVlFyWmV0UUtSOGdRMGY4?=
 =?utf-8?B?OEhPcFY4VzFMU1lwRTczRGFmdm5ZRDVyR0laNmJ3U1dQNlRQeDA4eG4rWVlL?=
 =?utf-8?B?SFNGZkM5ai85Q2dqZXZ3VFNyVFNFR2lFUkRJNzk0V2ZBaHg0aWx6Q1pMR1F5?=
 =?utf-8?B?YnFnSGhMWmR2a0FWVkozUGFJR0dkMGFZUHFydURXVVRpSlg0M1lqVExYejA3?=
 =?utf-8?B?b01aWVJJMEtHRkRXYlhmdDlqaUdWZEFKQUxTTjlHcUZ0QVh4SlRDMDVFQmtV?=
 =?utf-8?B?eEljeEppc1htTWM5MmdJdTdwSW1abmhFdVpvbU9uaFQ2OG9Xc0NUY0NOTXRh?=
 =?utf-8?B?b2lSQmphU1dCQnZNWGZiWHBJSE8vUTJTQkU5TUlUMzF5SGNLdXhaTUJJcyts?=
 =?utf-8?B?aSt5MExMZ2ExOGNOd0lyUERVYnROVzM5WHFwR2ZJMUNrbWFFdC9QeEZEUFpx?=
 =?utf-8?B?WnkybjZ0WEdYZFJWNmtRc2dlWllZY3dZWkU2ZFdORy9lUTNpMGNsdHN3NFcv?=
 =?utf-8?B?NUhvR0ZUdVFobWx2ODVJZFhkQU8rR0FmNXBUalpjTkNZOHpGRWk1UFZtcTFv?=
 =?utf-8?B?QkFNeUpSY2tZUWxvbG1Hazh6ZHVBTEMyWnF2czFBVmRzcE93Z1dqYWtjZE9U?=
 =?utf-8?B?Ulh6amR3ZGFpODNDK1I0OXRiZlNVRWpKYlBRZWRsVk5STFFDQXp1UkcwNWlD?=
 =?utf-8?B?eHYxOUZINktwSWtKcmw5ZE9va1dEZk8zMjU0OHJIWFVsanVkWVYrbDN4Zkpt?=
 =?utf-8?B?cDd5akJsaWpEZlRONTU5d0FFOGNVNDVQNjNaQUFEaDVsRS9lWDlWbkM3Yi9Z?=
 =?utf-8?B?Y0E3UHZuWUdDNDhsYm9WMFRhRkp6NElrOSs1aFdRUWM3WTJoTjc5a01TQjRM?=
 =?utf-8?B?N0N2N0NqYjlSaVhHV253cTdRaUNkbkI4YXowQTIvcG9KcWswYTRlTUdlZzNy?=
 =?utf-8?B?Sm9FSnFiQmRaQzBvZzhIbGlQdFRibmNIYUdRdHNsaTFBUUN0Z3QvR2hybnVF?=
 =?utf-8?B?aWhTU0dxcWpsVVh2clFlS1hua0ZDdHZnQVgvOUNzcXM4QjJyaDNQTldqVUR4?=
 =?utf-8?B?Wm5jdEFsTlZtb2tLeTQ0OUhpem1uaHdnTXFIbjhUOGlBOXBvU3g3UmFQOWJI?=
 =?utf-8?B?Qlo3djJzZGRiYTZGV3dqdU5PTnZlTDhVM0xCRE5HeWh2Q1orZmlOUCtnU0h6?=
 =?utf-8?B?K3ErYVJGUGpuYjVkL2RhNHdHZXh2WkhuMGQrbEhPaUZMeFpnZUw0bVdKUDNN?=
 =?utf-8?B?NUo3WjhmNllDNmdiMk43RXBXcXhBbHFDR1JJVEpaWXV4Y3p1cFdZcE5SUyt3?=
 =?utf-8?Q?roaup9foZXTt9nkxvtL9pWEF6?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46caf777-26bb-4c10-f289-08db2f758a98
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2023 10:16:48.5390 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rFWJdcDMhCxbLNQCUD8BDmO+yVzAnDgVFtIiDC1sl5ZDtJqSu1hJKiqQ7Zp5des9v/IAWyAl0bZZWqUSbevKmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6779
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 28/29] drm/i915: Remove TC PHY disconnect
 workaround
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMSBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MjgvMjldIGRybS9pOTE1OiBSZW1vdmUgVEMgUEhZIGRpc2Nvbm5lY3QNCj4gd29ya2Fyb3VuZA0K
PiANCj4gQWZ0ZXIgdGhlIHByZXZpb3VzIHBhdGNoIHRoZSB3b3JrYXJvdW5kIGZvciBhIFRDIFBI
WSBoYW5nIGlzc3VlIGlzIG5vdCByZXF1aXJlZA0KPiBhbnkgbW9yZSwgcmVtb3ZlIGl0Lg0KPiAN
Cg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4g
U2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyB8IDggLS0tLS0tLS0NCj4g
IDEgZmlsZSBjaGFuZ2VkLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBpbmRleCAzNjQ1NGVjNWU4ZTA5Li42ZGQ4MjA4NDE3
ODM2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Rj
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IEBA
IC0xNDI2LDE0ICsxNDI2LDYgQEAgdm9pZCBpbnRlbF90Y19wb3J0X3B1dF9saW5rKHN0cnVjdCBp
bnRlbF9kaWdpdGFsX3BvcnQNCj4gKmRpZ19wb3J0KQ0KPiAgCWludGVsX3RjX3BvcnRfbG9jayhk
aWdfcG9ydCk7DQo+ICAJX19pbnRlbF90Y19wb3J0X3B1dF9saW5rKHRjKTsNCj4gIAlpbnRlbF90
Y19wb3J0X3VubG9jayhkaWdfcG9ydCk7DQo+IC0NCj4gLQkvKg0KPiAtCSAqIERpc2Nvbm5lY3Rp
bmcgdGhlIFBIWSBhZnRlciB0aGUgUEhZJ3MgUExMIGdldHMgZGlzYWJsZWQgbWF5DQo+IC0JICog
aGFuZyB0aGUgc3lzdGVtIG9uIEFETC1QLCBzbyBkaXNjb25uZWN0IHRoZSBQSFkgaGVyZSBzeW5j
aHJvbm91c2x5Lg0KPiAtCSAqIFRPRE86IHJlbW92ZSB0aGlzIG9uY2UgdGhlIHJvb3QgY2F1c2Ug
b2YgdGhlIG9yZGVyaW5nIHJlcXVpcmVtZW50DQo+IC0JICogaXMgZm91bmQvZml4ZWQuDQo+IC0J
ICovDQo+IC0JaW50ZWxfdGNfcG9ydF9mbHVzaF93b3JrKGRpZ19wb3J0KTsNCj4gIH0NCj4gDQo+
ICBpbnQgaW50ZWxfdGNfcG9ydF9pbml0KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19w
b3J0LCBib29sIGlzX2xlZ2FjeSkNCj4gLS0NCj4gMi4zNy4xDQoNCg==
