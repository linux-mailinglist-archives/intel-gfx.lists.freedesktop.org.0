Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 406F77A50E1
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 19:24:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4480810E0E8;
	Mon, 18 Sep 2023 17:24:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CF8410E0E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Sep 2023 17:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695057868; x=1726593868;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=TxPDWX1FMCzjNb0CtmBhCZQYN1nrej+hrH5sQyJ7wO8=;
 b=B4Ev6USAyZxScnGkHu2KQJwNofw/doxyK6xXy8eIpceEJX6hL7dxpvCd
 whLiBfkgs46Q+Rw1WVJUhFh0BKwbVBRdGjd2Y8qQb1ilmBV6OK0WLJngs
 es4pxM14QlVvglu9XlL1SZEC7lznY/lHqRAVfY9wgIrQlFoOG6nmG02sY
 SbECsNe6aTBs3t0zZ0xfHLWCxbBxI6SipNKVIi6Vi/grmdVYt4DiSFrQp
 WlWcHGPpVaAM0d8iBM/YpLaaL3uWN1ebxp9sWQRuSF2jAX3R8ZiQPJM74
 hMcSKPl6gjYTgQZe537S+Kr8LjiZZ8RhzfBtWc7qQlRcg7KD0Nr/b7aA/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="446182708"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="446182708"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 10:24:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="889153583"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="889153583"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2023 10:23:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 18 Sep 2023 10:24:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 18 Sep 2023 10:24:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 18 Sep 2023 10:24:23 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 18 Sep 2023 10:24:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YBLc82qBHqYN9bjGmZkSLB9MEL685eW3wP6lu1uLTePTUOrhqxvJ4XFFl4dDUihgbNZxeZyec7FrvnWaYMfI8XXeBq+DUcfi5dtb1ZjhCs33ojcvSsUWqUYGq+6fT/4cHWYZuAtyq7K2aU+sqlCYw1ww50OmMdIXyf55gY2KjifD9zJAKhpE4qsV+SARPHdCqRB+LGPpsfX472TuYNUciJe+uW/dYeXNmG4b2mSMnYLsHXwmfIjM39Y+Ft3yhED30fF/ZIpI4LpF7Y+Y4pLxqWV2Nb6AJJ9zBVOtbTLmbrNd8+GJy8XFBZiNAC5EDRSFjzHVYzQCDMG9o1RW6093FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TxPDWX1FMCzjNb0CtmBhCZQYN1nrej+hrH5sQyJ7wO8=;
 b=oFFUBo8VxguwJbf5uxUrs9DMawYu/A323bGh0aiUornVTVLRoRw/9AMjVDSEN6JaoEb+Cz+0zgHik4HA72dVEXR9Y/4g/1VKD29s4aOYxZjIMVykcO5Qx9xbi0cNkWaqUUfGbvzVJ5ucxgq7CXDib7PkYLr11jpf8ZcY2FZSxNbdsap4NjvrbUC0OPNC6ibE7vAiViV5kclbgaXd66Hl+FKbR8mtzhntJetPrx07VGMNpJyrYFewc99JxDxmO96lscavXZ1PWKXgJ+G4LzFgv3BJzC0PKHdZMLrTeybaVkBbRU2g7WPQrdz7HK5KdKyonRvCyWgn0W4l5hCrRpFIIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH7PR11MB7961.namprd11.prod.outlook.com (2603:10b6:510:244::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.27; Mon, 18 Sep
 2023 17:24:19 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::542d:f32a:14b:1531]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::542d:f32a:14b:1531%3]) with mapi id 15.20.6792.026; Mon, 18 Sep 2023
 17:24:19 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5?=
 =?utf-8?B?MTUvcHhwL210bDogVXBkYXRlIGdzYy1oZWNpIGNtZCBzdWJtaXNzaW9uIHRv?=
 =?utf-8?Q?_align_with_fw/hw_spec?=
Thread-Index: AQHZ6bMFk0KcRhHIHE6xu0749MbZN7Ag1oIA
Date: Mon, 18 Sep 2023 17:24:19 +0000
Message-ID: <3888306287f6fa41c33f04ce886c004f5249c9b9.camel@intel.com>
References: <20230917211933.1407559-1-alan.previn.teres.alexis@intel.com>
 <169498828890.8541.4793661843398816232@emeril.freedesktop.org>
In-Reply-To: <169498828890.8541.4793661843398816232@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH7PR11MB7961:EE_
x-ms-office365-filtering-correlation-id: 7f9cb03e-fc29-452a-7b58-08dbb86c17b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BS1XFoStbqf3MOSM2Da0DCfA3x3sgil9jAHhpmIKD3uU1zbpp/QpRuizjZgumzlB0Mp7yCxI+dFLq4WMASWjR0+p21cuLlfSk0UcrK/QHKBiQhoATxE403BnqkIMHngtfEdrowdp1MF9N0wJSHt3NFQOajZxRs/yIMIkcmYJCXJCDHXd7n6ZlUyIX/4jvgbbaHSINCYpjOmEwnulE6RXM3PJQQTzRVUJIhqwQs1iZ6iboJLh92/du7t9XUZNe37aasVcxa4I50RVj1peDjyAfyT0W+dKFjwy/j0R87Rrh9mdVPX0fiou8qZciLPzdHIh0P3eyfEyygsGKjg6fVfoC+dmEYCWP3hctkBxbRVxJQDk+RcgNgSfjryZbX41BGPN4Rb2ykZXkCmLP4u7USv41xaf/Dz+eYGsHg/6ezi26QmuTvSRU9AZ/c4xtVM1e5hS79ON5kGcwyObrfRKhJXnsTrb6m5Aa8CNTaK4fHglGoAvVG1Iz6fWViJBHdAPLyI+ICOqDNV5M5PNjg8NRYer/90hXCNYngTAu+5bHx2w2NZCEW0IERPD1AB6lx1heDNttPbLVoQnUngJdAnYPQo9EeuW7cWiXj6Cmi5qokhWn++Uihk84lEGbHAvW2CXjYpk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(366004)(346002)(376002)(39860400002)(1800799009)(186009)(451199024)(6486002)(6506007)(6512007)(71200400001)(83380400001)(966005)(478600001)(26005)(2616005)(4744005)(2906002)(64756008)(66446008)(66476007)(66946007)(76116006)(66556008)(91956017)(316002)(6916009)(5660300002)(8936002)(41300700001)(15650500001)(86362001)(38100700002)(36756003)(82960400001)(122000001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N252NjMwbXVlQ21EWXRoSXVUYTE1QW1hZENSZ25hdlNHbmQvaFk4VzhmVzFk?=
 =?utf-8?B?ZmRFM0l1dnhCZ291OHkzZzFpQUp6cWxYb2xJZXFGNVVzU2tyTjJyVXI0LzFT?=
 =?utf-8?B?UWZHNHQ4NDRsRWhvbVVsaFhzcXNTVlVJaWNmK3JVUTJOTGVrVk56NzZoMmxR?=
 =?utf-8?B?MVhxaDg4VzZncTZXOW15cktKR0hUVzFTUnUrK2FFOW5jRnhDeTZuTjQzeFBN?=
 =?utf-8?B?R2dFMjhBYUp6eGg4VnlXYlNIWGkwNmtaL0t2aU5VZVljdFJhalYrVTAvTTJC?=
 =?utf-8?B?UkEvTGNxbFJqNFNYRkRtcFFucDB2SUVZallzcFpVWFo2Z2RZT082ZGJOUzNx?=
 =?utf-8?B?VHVlWkRPRnFLdERxRXBJdjRKRlIzRlNLNEFBNkx0Z0JiMDNoU0lvdTZsUUlJ?=
 =?utf-8?B?d3RMT3RmeXYrby9QM0NleVI0c3pHb2pwUU12VS9UaTZhR2VEUFNMVDBzeDRH?=
 =?utf-8?B?djlZUXQ5MGFoSmlCbTBDQVFHSmJhNHRvV0xUK29iQzY4UFVBellSREdvMXlP?=
 =?utf-8?B?bWhjZ3FuRHNEWFM1cWhVWXhBWnE2cDB4R3ZPMGNFZjBTa0VkY05JYThobUNQ?=
 =?utf-8?B?ZXFxcFRlckRweFJabFIwcDlOV0pMcWVhTVcvT0dkWTJmc0tuVks2TElFajJC?=
 =?utf-8?B?VzQ0Q0Y2aGZWa0hlbm1QZWxCekMvNm42TGVzL2c1Y3VPQmNxb1ZFc2xGQWZk?=
 =?utf-8?B?TXFKUXhnaHdQc25ydjZwQXp0OG5sQmxISmZMWHY5K0dzUWVlVnc4ZEN5L1Zv?=
 =?utf-8?B?eDFwejFYaWNtbSt0alJvL1BsVXA1b3J6RlRvS1IxbllUcUtJM0NqNGFkQ0Iy?=
 =?utf-8?B?dU5zWFpPZStld2NCQURONWhBN0owOWhveFc4Q2pFNVhYV1ovRmtCWm5hbnRi?=
 =?utf-8?B?d1hVS1F4emdIMEh6WkZhQVdicUw4VExDZlRMWjg3N0dxR3hCc1FwaDdBUWRN?=
 =?utf-8?B?VVkvbWxFSDNYZG9pdWZnaEIraXZ3aUtNVUZnY0I3bjhDZEVEcDBXVUtYdDlV?=
 =?utf-8?B?RTJMRFdDVUllMVVWdXVDZFZ1YWpBYmxuRlYvRXFtUzJuV2wrT1FxdTJDYWRP?=
 =?utf-8?B?MGlObzFSTUZPWkVlK0lhN1ZobG1KQUdENFhLbldFekFIUFJSdDZvUE9rNGp3?=
 =?utf-8?B?VnJTRFZYdFhQa0dYWWgwWnd5SGp6d1Y1cG0xbFFhL1Y3OGVveWRrNyt0ajFC?=
 =?utf-8?B?YVYyaDJDRElPbzV0SUhLR1FVQWFqNHBUcmY2Y2pMZVExMVlWaFBrK3ZERjBn?=
 =?utf-8?B?Vzg2VGlBYTc3SC9yZDZqU21RVmYzV1ZNYS9jL3B1S1J6SDNHTHFTZFBxU0pC?=
 =?utf-8?B?LzZaR1l6S20vWDVvclpaTTZhcHM0MndYbDR0U0ZpT2h3RDg4M29iMXZFaU0y?=
 =?utf-8?B?MjU0WlVNd0ViajRCMTRaOEMvb2RNWlh0RUo5NGplbGJ3RVFYSnJwUHFKMmQy?=
 =?utf-8?B?WlU3OHZTSlFCaG51WS8yMm92RndUQisyRmZYQngyRkorUnMxcWVGc20rcVpX?=
 =?utf-8?B?bW1BUTkzWkxqZ3JPaWo1U2s1S0ZxYW05WXFJb3FiL00ybk4yYXpZWnVaVzdp?=
 =?utf-8?B?R1FQcVNpajJUWWhMNWRwL0c5d2dLbUErZDY5QnB0NFhqUzhNVjBXNDJVVm9y?=
 =?utf-8?B?Q21EQkNYeHBjd25tb0FUaGEzMHRrT0JPUnhMZVNTWkxVZnV2WVZpK0lhSTRl?=
 =?utf-8?B?SWdycjJ3d0hkTkJmMWxOUm16WFNxbUw2Z0lERUVaMzI3WmpwWWhqYVZ6djdX?=
 =?utf-8?B?NDEyZWYwMHIzMldFUmltZEJuUjRGclU4eFd4UEpYMUI2dDhBNW00VTFIckhX?=
 =?utf-8?B?SURHMjlEeWhUTm9FNWQvVnI2ZkVkQlNndUo5TXhtcEhNanhlMjh4dVV1ZHVQ?=
 =?utf-8?B?L0lWSWFxSjY2QVltNzZaR0E2TVlpYjVjYmZxNFFadUtlMURxUjhNUmtsQ2FJ?=
 =?utf-8?B?RThqMGcyVDVpc0RlMVFGbThlTTNhemtpM3NxMWo4RzZPOEJ3UlRzZElqZXJI?=
 =?utf-8?B?Mk5UUUwwMzhJQndweC8xOE55TXJKdTNlZDJhTW9NM0tOMFFXNzNvM3E5cnBC?=
 =?utf-8?B?T3MydkZkZ1lxVFFhT2V1ZXVYYlU4ak5UY2VRRmgyRm5tLzlVU2dwMmI3ZVBU?=
 =?utf-8?B?UTFOWGhkM01LZ3FHdTFDcTFmM282VHRDc29xVWx0cHMwL3VOZUMrYTl3Rnhj?=
 =?utf-8?Q?wyjhmjgs6GNqRGM6hyzV0Hc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8187C37DE99DF24886D3C2E7D7ACAD32@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f9cb03e-fc29-452a-7b58-08dbb86c17b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2023 17:24:19.6533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ueUOZ4eDv5QXLJe6h5X4KwRqCmLy3TGh9d1/7WI8PedtaSpIOIKkgs8me/MiUnv6gvHoDJA9L0AGvvu1zlz8D/Sn1vfA3dcqbQe8PPlRv0t60tZULXM6dd1rRVGfowib
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7961
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pxp/mtl=3A_Update_gsc-heci_cmd_submission_to_align_with_f?=
 =?utf-8?q?w/hw_spec?=
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

T24gU3VuLCAyMDIzLTA5LTE3IGF0IDIyOjA0ICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+IFBh
dGNoIERldGFpbHMNCj4gU2VyaWVzOiBkcm0vaTkxNS9weHAvbXRsOiBVcGRhdGUgZ3NjLWhlY2kg
Y21kIHN1Ym1pc3Npb24gdG8gYWxpZ24gd2l0aCBmdy9odyBzcGVjDQo+IFVSTDogICAgaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMjM4MzAvDQo+IA0KDQphbGFuOnNu
aXANCkJlbG93IGlzc3VlIGl0IHVucmVsYXRlZCBzaW5jZSB0aGlzIHNlcmllcyBvbmx5IGNoYW5n
ZXMgY29kZSBwYXRocyBpbiBNVEwtUFhQIG9ubHkgYW5kIGluIHB4cC1zcGVjaWZpYyBscmMgY29k
ZS4gKGRvdWJsZSBjaGVja2VkKS4gd2lsbCByZXRyaWdnZXIgdGVzdCBzaW5jZSBpdCB3YXMgYSBC
QVQgZmFpbHVyZS4NCg0KPiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+IA0KPiBIZXJlIGFyZSB0aGUg
dW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29y
a18xMjM4MzB2MToNCj4gDQo+IElHVCBjaGFuZ2VzDQo+IFBvc3NpYmxlIHJlZ3Jlc3Npb25zDQo+
IA0KPiAgICogICBpZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zM0BsbWVtMDoNCj4gICAgICAq
ICAgYmF0LWRnMi04OiBOT1RSVU4gLT4gSU5DT01QTEVURTxodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjM4MzB2MS9iYXQtZGcyLTgvaWd0QGdlbV9l
eGVjX3N1c3BlbmRAYmFzaWMtczNAbG1lbTAuaHRtbD4NCj4gDQoNCg==
