Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1B470CFE3
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 02:55:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58FC110E2D7;
	Tue, 23 May 2023 00:55:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AB1610E2D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 00:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684803348; x=1716339348;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qtDh2UUhTsDMjhcNxtR/NhNRh7zoIM1NbXYhqVKdOBw=;
 b=l31adrm9q/62LhZIoZtD1Ek16NY2BIxyBUPoitDoRtftDUZo1G+fOFBn
 tyr9wCqiHbaWDZ3HbxA9ySYHt/cTFPigaM6SgxPmV/Tio5AwS/kCGvwIY
 AtSs51FoNxxqjuRjxikZn0utShI8CW+C1TRcSByAecjYN7c5tW7vnNeAi
 SWy2r+SArPJvzVTYNsWtpYZ+iaqyGvkTBIXVvO7reNQs14tEs800B4ptv
 63gBOlbXMevB87JJhLsl3IF4WWVIYNJvM5NGNmkwYZKjfhq0W3W5lvjON
 S2EMncPoMId/jHihrYVKNZ7HwC4DB7R4xAjdO957vYvFSpMJj95aQhiJw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="350596229"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="350596229"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 17:55:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="654154115"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="654154115"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 22 May 2023 17:55:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 17:55:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 17:55:46 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 17:55:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ARPtIh3Yuq/vYyXoNGZpYJf96tCbEV1oCGpesC6llWYeX4OoAdqbQXgVjTOl79aVJ4AVFOnwfOSZGMDnFAAZqInlB/lrpAeg3oa3VZWA+tADHkFvGqmGoQyfti9MfZVv6/dCC1sAfIvhT9N5TyH9YLETHDBYCnbI2KRxnw2KXUBeNVQt7oycW3c37mUUCoAYvfFNxHLb1j4hFeUiJJOPyMWD+RCTGjb6ctw14BiMaBuSdV1QTtYGwN/OSxzftDmHgW32+hbYIe/6uiIhtuwA7hvHCWRvuSEPdbV2REfjZsbKYZbdjksqXS8nRYIVifm5e4gEy3UnoFmxSyKr1W6RdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qtDh2UUhTsDMjhcNxtR/NhNRh7zoIM1NbXYhqVKdOBw=;
 b=gpAtP3TYnIl5KNPAK6hlSjh3ErIYUsDw+VCSz69QZohXra4wtqqIEv0YjWOfvnvavVn0D12DeN6zJhnf4eHNaGQ3N1Y+LdSE0LqlPt/lRaqKN8RyJRuDuKOOEZyNfb/DgWRWsrKiOBw/bAGuIfAW0TsERr9oEF48UIIXEpKqccgjlWYOI0fOe0L/F95YM1yAsJBQsHFnEtSPZevTO1u5GTA5XVptn8wK4X3KKvzpnFkmUdbYaJI2rAOjFoLAS7LEsuyfamf7MDjJD+CHAU8GnyJFaTBE5/zGYwpK7CRn8TZU6KjY8tr4fWYRH+A2v2t71deECstpLLdDkvDFP/tlEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by DS0PR11MB7802.namprd11.prod.outlook.com (2603:10b6:8:de::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Tue, 23 May
 2023 00:55:45 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::1f76:e934:bd01:fba9]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::1f76:e934:bd01:fba9%2]) with mapi id 15.20.6411.028; Tue, 23 May 2023
 00:55:44 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/hdcp: Create hdcp_gsc_message in and out
Thread-Index: AQHZijdvpU7Hx5luvEi1bvT9FEPeJq9mb3cAgACdFHA=
Date: Tue, 23 May 2023 00:55:44 +0000
Message-ID: <MW4PR11MB6761B8192CFC3506C02F9A64E3409@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20230519094918.1182044-1-suraj.kandpal@intel.com>
 <20230519094918.1182044-2-suraj.kandpal@intel.com>
 <e9178773-94b4-95fb-a8bf-87d537614ef8@intel.com>
In-Reply-To: <e9178773-94b4-95fb-a8bf-87d537614ef8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|DS0PR11MB7802:EE_
x-ms-office365-filtering-correlation-id: b36bf035-a172-4a25-fb85-08db5b287090
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7kkpWBw0KN9jFhTK0uHGzs4Bg5uFiIJkkOvCPwmW1LjXjCejKoDadx5i37+qVUwn49lmdVpTRXkAuWUKhVWa5AMTzwsNLvQvBL1S2YFD09XqmSMLvF6Kl1Y5/stJ0WTBdYlVQ5mSPbyTefE70BsRO2Y9rekPULafhNAa5QGuLkaxQlHQORDD1mCwmmdFHgQGdnzqbdCvJwxtPpPk5X4OsWY7KY0o1/ZE/9lyA+XzN3op2FXkuElqQifJGZxpJT4qB/Z+xBqm5Z6KhA08cLe8URODRfVGqxAC0pn+9TKEob6eZFGoAg2uVu7sF70CyPf3FF3LRN2FnrgjCDzBvEBfM7IbP/lGoWcFLNMhZmENSucsgrQBnRFq5HGr4EA+GaUY1gnkJHFZ0DaTbqbT862aepEp6zKp9N7C7eSyamuzz6Actzw6zJYnHBc2evbNnWYC3J175d/vpzU3K/lA7ZadRN1V5GzKKP31zxEUuvrG8Uv9y09FA28cfMNNWYuTNSRWvhSr6m916MrvxERLYFUZKki2x63iryFac1Qy57ofZyw6we1+YXwpaMDCotHh8HewAtYi/Sji6Po94YZROA5kTfE1wCl0tB5NhZfUTmMm4t451cYIgZQAGtwkr5eoML2x
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(396003)(376002)(136003)(346002)(451199021)(8676002)(8936002)(5660300002)(52536014)(186003)(83380400001)(53546011)(9686003)(6506007)(107886003)(86362001)(38100700002)(122000001)(82960400001)(38070700005)(71200400001)(64756008)(41300700001)(7696005)(55016003)(33656002)(76116006)(66446008)(66946007)(66476007)(66556008)(316002)(4326008)(478600001)(54906003)(110136005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bzMvSUFJWXRuekF5OGYrZU1mU1AwS016endLTlpIV3VFN1dRWFRaQW41alJZ?=
 =?utf-8?B?WWVFMFZ2WTZOcFVlRzgybVNEOXk3c1ZIMTVKUVZTamp5UDZkNWpzTys5ZlNS?=
 =?utf-8?B?ODNBb3poNGFwZ3Y4ZVNlS256d1l4UjV0SEJCMnlwRSsvdThXc09LeHh1S2ty?=
 =?utf-8?B?T1llQkhOdllyQ1VjbnZ2U29FZHJKY2VJTWNFdlYrd09oL0NjS0ljbUt2VlFo?=
 =?utf-8?B?dU5TY1FLYjA1UllRa3Z6WUxoR2lNOWx6OW8rbWRsNHB6ZzZheFhHZGFTckpX?=
 =?utf-8?B?ZExuNFA2SjBkMGdSWk1mN1k0blN3Q2pVenZETkxVbUkxODNUOGtLQTVPMGtu?=
 =?utf-8?B?ZzFaM3FSZ21xSzdRYjN1S1Z6dUNZYTRvdloxdHhySHViV2crM0NvVExYWTNN?=
 =?utf-8?B?QStaTVY0cU1BMkp6ckp2YzZacEZUNlZiekQrL0J5VkFSUFVWZ3piTlhFNHQ1?=
 =?utf-8?B?VTU0WjZjRnVEQk5BV09LZEZXRmo4aXI5YmdkMy9NZyt5TFZqdlBBTStmR1Bt?=
 =?utf-8?B?ZkZYMWxaWlJLWVBSWjc5NkRMRElTb1ZLRjNYa2JNWGowSTRqZkFEYXhYNG9C?=
 =?utf-8?B?cTlxUk9lWXdjY2tla2xmL2drVGt0Z3NhaytuZFRGRFhsbXJzQ3o1WCtlVUZJ?=
 =?utf-8?B?KzdVVVZsSlg5aHd5TFRBQ29EWUg3TkJDd2lGRGM4d2I2QlB3OVJ4R3lZMWNv?=
 =?utf-8?B?bzBqQVZFVy9YMDd3TXNyVlJKZk9tUHExeXByby8wRzlJYkJERGw5aTlCUTgv?=
 =?utf-8?B?ZXR1VWk5Q1l4TG9YUndOZDB1blpxUWdpd25lNUNjU3JVVUxEK1FONFZGVXhl?=
 =?utf-8?B?R3A3TGNSbEtpc2JCYUtmcDc1Z09EZ3RJekpJcEh4bUhySUQ1ZGFzemU3Z1Bk?=
 =?utf-8?B?QlhMWWdCRHdzNkQ2cWFxcFo1SWVrcStINDQzUVJEQ0hJMGJOWkl4cTBxOENt?=
 =?utf-8?B?a0lhSXdLNElJaGJhb0xxeE50NGxUQ2hyZGZBZlkwMDVOSFprVExZQktsZDdI?=
 =?utf-8?B?VmREUU1iM3dkRExRRTFpQ1g1OEI0WTEybmY5dnJQOTVJSkpyMnVFdXVMTk82?=
 =?utf-8?B?dHJBb21YMnlKKzVJWm56SnptYS9BTmx6SFBWOUhjWnB2L1E0YnZXQ0RGZ2l5?=
 =?utf-8?B?MkFRejkyRVcvUGtPNkc5NjRjeGpuSEZ5Y2RtYTFjRUdzcktPOEljTStFYUVa?=
 =?utf-8?B?N2NZQ1VXaWVReFZPVW0rb1FhM0hzcDNqTlMvRm5RUWlNWHhDWDFqc1JSY1Qy?=
 =?utf-8?B?ZXlGQ05WSU1aUTV5WkVuaFJLN1RZZndhUktQTUFyczU2MTVOa1NpaERuVE8z?=
 =?utf-8?B?VmUzbXlzMDZrU0cvTW9lemJ4NUJEaldKTmZTV0JmdFpxQWhDcno0ZnZvU0Rs?=
 =?utf-8?B?Tjg2R3NiZjNmWVdrZTZES0RJVTVlWll4NjA0VzUzZUpYWjlnMWswZC93V2NS?=
 =?utf-8?B?WGdSSDdWUkl2SmRyYXhXMkVxZ21BeG1VT1E0WSt4NWRRWSt3OEkrQ2ovNXpH?=
 =?utf-8?B?UXRSeFlOZG94alZRMVRocGxHNVZraHIzM1duWTl0WXdnRFQ0OUljR2l1R211?=
 =?utf-8?B?QkgzWit1bEVjTngrNjJPOG9NSnF3cThoZUpqR0dlMjVCSDljQTFPa3owbThm?=
 =?utf-8?B?Q2l1Z0hTMTFBQzJOZnQrSUxSWkZTMW1LZy92NWVlVTVaY0VJUmRwdFhkUi9K?=
 =?utf-8?B?L0hTQmZ6NVV0dGpUK2dtVEdaTHNwM0tCZS90N1NCNStROWNlQlB3K0w3YTJQ?=
 =?utf-8?B?VUpvRlI2UHF1d0ZUSW9BOGlHZVVmU2t3RC9KOEZtMGExWkR3T3Q2bVc0dkdT?=
 =?utf-8?B?R3lCQnQremZoVkc5NUZZZi9nTDFSVDBJTXd2bXM1VWlTMFR1WEZGTHZIckVu?=
 =?utf-8?B?M3VxUk1BWTR2QUdocDN6TnpBWjJJbFFHN1pRaWpJWGQrTm5zb0o0RWdiNHlr?=
 =?utf-8?B?VXRNSGxOeGRJK09SdmgxeGlBblBuemQ3T0ZXZDlVcHFXcUtOMWRndTNDR3M2?=
 =?utf-8?B?cXYzNkZJWTdacEQ2MlNwVytjYmxuSU9oRU5LTkNUN0liOG9DY2JkRWhULzFU?=
 =?utf-8?B?TmhPc28xeDVXNmc2WHBlVnRUeXVGbXh5OGorZzFmazZUNmU5b0xLcTI3WENy?=
 =?utf-8?Q?HVvM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b36bf035-a172-4a25-fb85-08db5b287090
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2023 00:55:44.8072 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yqfHM++ojeg3N3dnP0RbLOhDX2wBUyLb+ywVPN67hftrLKhvS5FtuAmZbP5VPLmupBTtysG1e01Q5HaCTfyTpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7802
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Create hdcp_gsc_message
 in and out
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
Cc: "Teres Alexis, Alan
 Previn" <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiBPbiA1LzE5LzIwMjMgMjo0OSBBTSwgU3VyYWogS2FuZHBhbCB3cm90ZToNCj4gPiBBZGQgaGRj
cF9nc2NfbWVzc2FnZV9pbiBhbmQgaGRjcF9nc2NfbWVzc2FnZV9vdXQgdG8gaGVscA0KPiA+IGRp
ZmZlcmVuY3RpYXRlIHRoZSByZXBseSBnaXZlbiBieSBnc2MgdG8gYXZvaWQgYW55IGtpbmQgb2Yg
bWVzc2FnZQ0KPiA+IGNvcnJ1cHRpb24gZHVlIG1lc3NhZ2Ugc3RydWN0dXJlIHJldXNlLg0KPiA+
IGhkY3BfZ3NjX21lc3NhZ2Vfb3V0IHdpbGwgYmUgZmlsbGVkIGluIHVwY29taW5nIHBhdGNoZXMN
Cj4gDQo+IEdlbmVyaWMgcXVlc3Rpb24gb24gdGhlIGFwcHJvYWNoOiBmb3IgYm90aCBQWFAgYW5k
IEdTQyBwcm94eSwgd2UgYWxsb2NhdGUgYQ0KPiBzaW5nbGUgbXVsdGktcGFnZSBvYmplY3QgYW5k
IHVzZSB0aGUgZmlyc3QgaGFsZiBmb3IgaW5wdXQgYW5kIHRoZSBzZWNvbmQgaGFsZg0KPiBvdXRw
dXQuIFRoaXMgbWFrZXMgdGhpbmdzIHNpbXBsZXIgYmVjYXVzZSB3ZSBkb24ndCBuZWVkIHRvIGFs
bG9jYXRlLCBtYXANCj4gYW5kIHRoZW4gY2xlYW51cCAyIHNlcGFyYXRlIG9iamVjdHMuIEFueSBy
ZWFzb24gbm90IHRvIGZvbGxvdyBhIHNpbWlsYXINCj4gYXBwcm9hY2ggaGVyZT8NCj4gDQoNClRi
aCBJIHdhc24ndCBhd2FyZSBQWFAgYW5kIEdTQyBQcm94eSB3ZXJlIHRha2luZyB0aGlzIGFwcHJv
YWNoIG1heWJlIEkgdG9vIGNhbiBtb2RpZnkNCnRoZSBjb2RlIHRvIHVzZSB0aGlzIGFwcHJvYWNo
LCBjYW4geW91IHBvaW50IG1lIHRvd2FyZHMgYW55IHJlZmVyZW5jZSBmdW5jdGlvbiB3aGljaCBJ
IGNhbiBoYXZlIGEgbG9vayBhdC4NCg0KUmVnYXJkcywNClN1cmFqIEthbmRwYWwNCg0KPiBEYW5p
ZWxlDQo+IA0KPiA+DQo+ID4gQ2M6IEFua2l0IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGlu
dGVsLmNvbT4NCj4gPiBDYzogQWxhbiBQcmV2aW4gPGFsYW4ucHJldmluLnRlcmVzLmFsZXhpc0Bp
bnRlbC5jb20+DQo+ID4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9s
b3NwdXJpb0BpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogU3VyYWogS2FuZHBhbCA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gICAuLi4vZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmggfCAgMyArLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwX2dzYy5jIHwgNDEgKysrKysrKysrKysrKy0tLS0tLQ0K
PiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkN
Cj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfY29yZS5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfY29yZS5oDQo+ID4gaW5kZXggZTM2Zjg4YTM5Yjg2Li5lYWQxNmQzNDFmNWMgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X2NvcmUuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9jb3JlLmgNCj4gPiBAQCAtNDAzLDcgKzQwMyw4IEBAIHN0cnVjdCBpbnRlbF9kaXNwbGF5
IHsNCj4gPiAgIAkJICogcmV1c2VkIHdoZW4gc2VuZGluZyBtZXNzYWdlIHRvIGdzYyBjcy4NCj4g
PiAgIAkJICogdGhpcyBpcyBvbmx5IHBvcHVsYXRlZCBwb3N0IE1ldGVvcmxha2UNCj4gPiAgIAkJ
ICovDQo+ID4gLQkJc3RydWN0IGludGVsX2hkY3BfZ3NjX21lc3NhZ2UgKmhkY3BfbWVzc2FnZTsN
Cj4gPiArCQlzdHJ1Y3QgaW50ZWxfaGRjcF9nc2NfbWVzc2FnZSAqaGRjcF9tZXNzYWdlX2luOw0K
PiA+ICsJCXN0cnVjdCBpbnRlbF9oZGNwX2dzY19tZXNzYWdlICpoZGNwX21lc3NhZ2Vfb3V0Ow0K
PiA+ICAgCQkvKiBNdXRleCB0byBwcm90ZWN0IHRoZSBhYm92ZSBoZGNwIGNvbXBvbmVudCByZWxh
dGVkDQo+IHZhbHVlcy4gKi8NCj4gPiAgIAkJc3RydWN0IG11dGV4IGNvbXBfbXV0ZXg7DQo+ID4g
ICAJfSBoZGNwOw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkY3BfZ3NjLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfaGRjcF9nc2MuYw0KPiA+IGluZGV4IDdlNTJhZWE2YWExNy4uYmU1MDViMmQ2NzllIDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcF9nc2Mu
Yw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcF9nc2Mu
Yw0KPiA+IEBAIC02NjUsMzQgKzY2NSw1MSBAQCBzdGF0aWMgaW50DQo+ID4gaW50ZWxfaGRjcF9n
c2NfaW5pdGlhbGl6ZV9tZXNzYWdlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiA+
DQo+ID4gICBzdGF0aWMgaW50IGludGVsX2hkY3BfZ3NjX2hkY3AyX2luaXQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpDQo+ID4gICB7DQo+ID4gLQlzdHJ1Y3QgaW50ZWxfaGRjcF9nc2Nf
bWVzc2FnZSAqaGRjcF9tZXNzYWdlOw0KPiA+ICsJc3RydWN0IGludGVsX2hkY3BfZ3NjX21lc3Nh
Z2UgKmhkY3BfbWVzc2FnZV9pbiwNCj4gKmhkY3BfbWVzc2FnZV9vdXQ7DQo+ID4gICAJaW50IHJl
dDsNCj4gPg0KPiA+IC0JaGRjcF9tZXNzYWdlID0ga3phbGxvYyhzaXplb2YoKmhkY3BfbWVzc2Fn
ZSksIEdGUF9LRVJORUwpOw0KPiA+ICsJaGRjcF9tZXNzYWdlX2luID0ga3phbGxvYyhzaXplb2Yo
KmhkY3BfbWVzc2FnZV9pbiksIEdGUF9LRVJORUwpOw0KPiA+DQo+ID4gLQlpZiAoIWhkY3BfbWVz
c2FnZSkNCj4gPiArCWlmICghaGRjcF9tZXNzYWdlX2luKQ0KPiA+ICAgCQlyZXR1cm4gLUVOT01F
TTsNCj4gPg0KPiA+ICsJaGRjcF9tZXNzYWdlX291dCA9IGt6YWxsb2Moc2l6ZW9mKCpoZGNwX21l
c3NhZ2Vfb3V0KSwNCj4gR0ZQX0tFUk5FTCk7DQo+ID4gKw0KPiA+ICsJaWYgKCFoZGNwX21lc3Nh
Z2Vfb3V0KQ0KPiA+ICsJCXJldHVybiAtRU5PTUVNOw0KPiA+ICAgCS8qDQo+ID4gICAJICogTk9U
RTogTm8gbmVlZCB0byBsb2NrIHRoZSBjb21wIG11dGV4IGhlcmUgYXMgaXQgaXMgYWxyZWFkeQ0K
PiA+ICAgCSAqIGdvaW5nIHRvIGJlIHRha2VuIGJlZm9yZSB0aGlzIGZ1bmN0aW9uIGNhbGxlZA0K
PiA+ICAgCSAqLw0KPiA+IC0JaTkxNS0+ZGlzcGxheS5oZGNwLmhkY3BfbWVzc2FnZSA9IGhkY3Bf
bWVzc2FnZTsNCj4gPiAtCXJldCA9IGludGVsX2hkY3BfZ3NjX2luaXRpYWxpemVfbWVzc2FnZShp
OTE1LCBoZGNwX21lc3NhZ2UpOw0KPiA+ICsJaTkxNS0+ZGlzcGxheS5oZGNwLmhkY3BfbWVzc2Fn
ZV9pbiA9IGhkY3BfbWVzc2FnZV9pbjsNCj4gPiArCXJldCA9IGludGVsX2hkY3BfZ3NjX2luaXRp
YWxpemVfbWVzc2FnZShpOTE1LCBoZGNwX21lc3NhZ2VfaW4pOw0KPiA+ICsNCj4gPiArCWlmIChy
ZXQpIHsNCj4gPiArCQlkcm1fZXJyKCZpOTE1LT5kcm0sICJDb3VsZCBub3QgaW5pdGlhbGl6ZQ0K
PiBoZGNwX21lc3NhZ2VfaW5cbiIpOw0KPiA+ICsJCWdvdG8gb3V0Ow0KPiA+ICsJfQ0KPiA+ICsN
Cj4gPiArCWk5MTUtPmRpc3BsYXkuaGRjcC5oZGNwX21lc3NhZ2Vfb3V0ID0gaGRjcF9tZXNzYWdl
X291dDsNCj4gPiArCXJldCA9IGludGVsX2hkY3BfZ3NjX2luaXRpYWxpemVfbWVzc2FnZShpOTE1
LCBoZGNwX21lc3NhZ2Vfb3V0KTsNCj4gPg0KPiA+ICAgCWlmIChyZXQpDQo+ID4gLQkJZHJtX2Vy
cigmaTkxNS0+ZHJtLCAiQ291bGQgbm90IGluaXRpYWxpemUNCj4gaGRjcF9tZXNzYWdlXG4iKTsN
Cj4gPiArCQlkcm1fZXJyKCZpOTE1LT5kcm0sICJDb3VsZCBub3QgaW5pdGlhbGl6ZQ0KPiBoZGNw
X21lc3NhZ2Vfb3V0XG4iKTsNCj4gPg0KPiA+ICtvdXQ6DQo+ID4gICAJcmV0dXJuIHJldDsNCj4g
PiAgIH0NCj4gPg0KPiA+ICAgc3RhdGljIHZvaWQgaW50ZWxfaGRjcF9nc2NfZnJlZV9tZXNzYWdl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+ICAgew0KPiA+IC0Jc3RydWN0IGlu
dGVsX2hkY3BfZ3NjX21lc3NhZ2UgKmhkY3BfbWVzc2FnZSA9DQo+ID4gLQkJCQkJaTkxNS0+ZGlz
cGxheS5oZGNwLmhkY3BfbWVzc2FnZTsNCj4gPiAtDQo+ID4gLQlpOTE1X3ZtYV91bnBpbl9hbmRf
cmVsZWFzZSgmaGRjcF9tZXNzYWdlLT52bWEsDQo+IEk5MTVfVk1BX1JFTEVBU0VfTUFQKTsNCj4g
PiAtCWtmcmVlKGhkY3BfbWVzc2FnZSk7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfaGRjcF9nc2NfbWVz
c2FnZSAqaGRjcF9tZXNzYWdlX2luID0NCj4gPiArCQkJCQlpOTE1LQ0KPiA+ZGlzcGxheS5oZGNw
LmhkY3BfbWVzc2FnZV9pbjsNCj4gPiArCXN0cnVjdCBpbnRlbF9oZGNwX2dzY19tZXNzYWdlICpo
ZGNwX21lc3NhZ2Vfb3V0ID0NCj4gPiArCQkJCQlpOTE1LQ0KPiA+ZGlzcGxheS5oZGNwLmhkY3Bf
bWVzc2FnZV9vdXQ7DQo+ID4gKw0KPiA+ICsJaTkxNV92bWFfdW5waW5fYW5kX3JlbGVhc2UoJmhk
Y3BfbWVzc2FnZV9pbi0+dm1hLA0KPiBJOTE1X1ZNQV9SRUxFQVNFX01BUCk7DQo+ID4gKwlpOTE1
X3ZtYV91bnBpbl9hbmRfcmVsZWFzZSgmaGRjcF9tZXNzYWdlX291dC0+dm1hLA0KPiBJOTE1X1ZN
QV9SRUxFQVNFX01BUCk7DQo+ID4gKwlrZnJlZShoZGNwX21lc3NhZ2VfaW4pOw0KPiA+ICsJa2Zy
ZWUoaGRjcF9tZXNzYWdlX291dCk7DQo+ID4gICB9DQo+ID4NCj4gPiAgIGludCBpbnRlbF9oZGNw
X2dzY19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KSBAQCAtNzgyLDcNCj4gPiAr
Nzk5LDcgQEAgc3NpemVfdCBpbnRlbF9oZGNwX2dzY19tc2dfc2VuZChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZQ0KPiAqaTkxNSwgdTggKm1zZ19pbiwNCj4gPiAgIAlpZiAobXNnX2luX2xlbiA+IG1h
eF9tc2dfc2l6ZSB8fCBtc2dfb3V0X2xlbiA+IG1heF9tc2dfc2l6ZSkNCj4gPiAgIAkJcmV0dXJu
IC1FTk9TUEM7DQo+ID4NCj4gPiAtCWhkY3BfbWVzc2FnZSA9IGk5MTUtPmRpc3BsYXkuaGRjcC5o
ZGNwX21lc3NhZ2U7DQo+ID4gKwloZGNwX21lc3NhZ2UgPSBpOTE1LT5kaXNwbGF5LmhkY3AuaGRj
cF9tZXNzYWdlX2luOw0KPiA+ICAgCWhlYWRlciA9IGhkY3BfbWVzc2FnZS0+aGRjcF9jbWQ7DQo+
ID4gICAJYWRkciA9IGk5MTVfZ2d0dF9vZmZzZXQoaGRjcF9tZXNzYWdlLT52bWEpOw0KPiA+DQoN
Cg==
