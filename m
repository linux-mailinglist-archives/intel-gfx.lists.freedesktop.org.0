Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1462C5FAD20
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 08:58:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD68E10E7BE;
	Tue, 11 Oct 2022 06:58:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4EA610E7C4
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 06:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665471508; x=1697007508;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=knQkhAnSUOOao+54ebpLB2U+JuZX/LE2tamyPehafG8=;
 b=m3wiSX61+Z+/wGGKYRTOhr0PwplOjr9AAqdH+Dme4gwcrq0D1XmZeI2Q
 0ofVVMDKzn21ehxQnJkeK1riUlIXH3BLfIFwMcEhY00nomGkLBU+Ewfn8
 k/jz+z6K4cXAgIV3uPYBpsoT1ceaf1J0B+3A+KEwNzSYj/E8U5els2Is+
 dyrSkDFjRbQeleO2CaLDZD6UqovERI9aNAKVImPhwr5rEmpItRs9Z+NgE
 eDyxRfdBNBX01fk0Z2TEyaT1n/OQO44ewMjGIfesdBfV1HDUxMTtEK1dB
 xf/iSFI6479aU6tNHnvWTWzA1gv1M370SOBqH4kmwkysmldWLs2ffRb9y g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="366416894"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="366416894"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 23:58:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="730861607"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="730861607"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 10 Oct 2022 23:58:27 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 10 Oct 2022 23:58:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 10 Oct 2022 23:58:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 10 Oct 2022 23:58:27 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 10 Oct 2022 23:58:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ONkdUgYqgW+wk/pI9RgwCKIcCK1IoLMjriGy4X4k5KjEP1gIA/GAniV5Bt/ftB/JaNAJ5yqlkEY59By8zjxt52DWhvcJBOaL1UPGJy0OM6qjf6zxpc0U9jKyHt55jgB7WgjwpEBzVTJ46qxNtdLcZjtvhjCTV2sDI2vIEGIp/fXZz7usyv+1Ht6FwG46JfJjC74h6AKtIZLzhQaopuY/UbCO2JycdOXv3iWHxwwUQAjjxmkxK5N3IFJpalrcP+y5/Ip258sNRIHfkw655gJti/w0jgRaFrtukWDgxiaZg8rrLRLb7HrQJ9f0zDAcEwvBAlr+jrWt6veN9KHQDP92ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=knQkhAnSUOOao+54ebpLB2U+JuZX/LE2tamyPehafG8=;
 b=bnrW+eETwZAcbDZJjGWBdroHT4oHzIahXrdFQtihrhV1Fu9QCCaw7fQ2GQYRT+dyXkR6PzoOwNWlbwFRO2k48CJtHSpdhCsp6w81BpUeO7e2E+zqWXToiaSlFsEPL6NskymupG7v4Ia7tfVEiER+IGz7FLMVWpwZXTcUln4u8jBU2qUhkgVd0sBFpSGUZt03dDXbr+3dXFYNqvxmX2pKvxES98A/SqvUJx+6nV6VRZNSgRGyNZA+xGOmB2GFWwhAN7x4iGjMhm7smIfYX8pK04/L7ft9d2rRgJCzbrPaeBkLezi0tcJR2sGZcvBmZokuAWLSTZatVhw8rL9JoRmTMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CY5PR11MB6462.namprd11.prod.outlook.com (2603:10b6:930:32::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.28; Tue, 11 Oct 2022 06:58:25 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::baaa:7aa8:7b3a:41e0]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::baaa:7aa8:7b3a:41e0%7]) with mapi id 15.20.5709.021; Tue, 11 Oct 2022
 06:58:25 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915: Do the DRIVER_ATOMIC feature
 disable later
Thread-Index: AQHY2pFlgSi1R5XqMEquCMhUvHJtkq4IxdRA
Date: Tue, 11 Oct 2022 06:58:25 +0000
Message-ID: <DM6PR11MB3177DE66F6184E7BF7FB9846BA239@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20221007211108.3883-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221007211108.3883-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|CY5PR11MB6462:EE_
x-ms-office365-filtering-correlation-id: 5583f3ff-57fe-4d09-5288-08daab55fe4c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GRdV5gTwq3AhzPjMB2bHLnfD733SfAdJK0nkTENsUtHQsr5UXKXETmxOVJojy9QnDd/S2E0pLYJbXR1pgaZDHDAa1nsqpo7BdUM6AyxzMblIeK/yafmC1sMLoEyw7Qer9rgiLbpvtpRYe8q2sTuwM2+1VG0TNp4Ou4JSfkCayBrV0bABcW9vQtZkNU9IaRAVKFLLDz+E2ipv2KhfwSMTw+QvEFqJSKmV43RZ//1r4GIC65P9yYUM9BzS+P0nwgZz+zFS9rhJSlvtybPH4lVz6D1cQhVOrdsG7ZUpXPl5gCka+CQE0h9ffXdg1NOarQKgXnxYtnaggJq5tZoeTPjNG04L0WtV1zMC/5LkJlw5uWgJIICa+EgJLHKgHL0YcpgqbmM3OWNWH5uX0ne6YMAAChSvYgFgkimfKnycRnib5G4xMv+qZyoZhvbuUvKn2hWn/5MW8NW5vnWH4Fp6KISWUbpQeWktjdhOfOoO1TUQlYSg16EGcm12gG1BEyI8CHE0/czMPA9x+3r9Fgyk5L/ryOur1WQzA4yP9vP/gdA4TyXCClT65BBWVSV25SIEmkG/ZLGxaYVVycg81a/TYFVvhnkjh1VlByZyT4pZ72HCJnrjxhkAGNplLD2DEMS3ZSKmXxDLAKCFMbSrIP/vG2PbF7MWFjzkVWB2YBiRvyvefTQdL2uFwFuo7wQbuFbWyiHsfRu1S9F0cQfs5o2DFVIZT6W8OK7LhP9IlzUFOzFUdg130w/G3oDp1hOXs+grq5Ap2as1FJxTRH0sqFdBv/3mDQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(366004)(396003)(136003)(376002)(451199015)(316002)(64756008)(66556008)(66476007)(66446008)(66946007)(8676002)(7696005)(76116006)(2906002)(52536014)(41300700001)(71200400001)(5660300002)(122000001)(33656002)(110136005)(9686003)(8936002)(86362001)(478600001)(186003)(26005)(83380400001)(38070700005)(6506007)(53546011)(55016003)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YjBtUDBIY3RSNzA4UkpoRWJkY0x4S01mdU11VHVYR3hLVklzbVFsRHBwNVAr?=
 =?utf-8?B?U1VnUFBPeERsckE4eGdBSWlLU0diSWJsY1daazJTWVVrTkV3NERTc1JKcFlO?=
 =?utf-8?B?Ym4yNG5UR2Evd3JLMjVObEUzWk1EeGUzQkR5TUwzSDdBbEloa2YrTTU2NFdi?=
 =?utf-8?B?MUZXN0U1V2hYUzMyWE5jYWtrbkZKSFJaL3IxaFBRczJhQXc2T3lsbUtqMThv?=
 =?utf-8?B?NnlYVUE0aTBBQnc3WjhLOFZmbGtyWmU3bUVTOTRveXRnOVpBWHQvaThZZVRY?=
 =?utf-8?B?NEozenh0K2JCdmxXcEpZaWtJeWN3ZVRMd1pHaVNBWjZ4a21rckNsZ3krUU82?=
 =?utf-8?B?S2srU0xvUG9vZGhyTUUrL05FN1RMRjVVNDIyc2hzeGJvZHFDMmJFNkxPc2No?=
 =?utf-8?B?OVpQbW5SRldiL0hJcENoaENiU0xPYURpNFRWZU9ONk4rYXg5UWhPckdxMy9w?=
 =?utf-8?B?bUtrdXk1dTJ5anlyelZOdFlJSHdzVTdQdlZmZDZ4Rm1pUUlIbzVFSERjTVZ4?=
 =?utf-8?B?cU50Z1JqQWJSN29FKzJWYkF1VmtVY3BoNnZmQnJhMnJGbGlIeGtnR3Y0blV5?=
 =?utf-8?B?aHdwajFLMlNJbkhNaGZ6U2pZUm4xU1ZyWUd4NG5LcmFudXliZEY1UkF6dUFH?=
 =?utf-8?B?c2llOEdqT295QnNNQWVYMmpuQUFFY0xCNmNxK0lkTTBkUnJ6TFlIalR5bVR4?=
 =?utf-8?B?dkIrbTlmSHdxUXdEL1pEWkowSWFTQStKNktRSVJVWjFrMk5sdmg3VXhrSWpQ?=
 =?utf-8?B?L1RzcWpmdThwUCtwVjdjb2RWMFNPMGtVb3hTbkp2UFZrVklMU3k4dlUyRk9L?=
 =?utf-8?B?anUranhFVzZlTkZtYlo5K28zdS8yUW44OFlwRTZ6SHFmaXg2U2ZZVTJIaDdN?=
 =?utf-8?B?RzBiaWZ4Q1QvQXZWVWxMQlJPLzJhTnVsWHh5UUtnMDczdlkzVi9aYXNxNVRR?=
 =?utf-8?B?aTYvc05BTzd2MEZPVWpvMGZyMDhGeHV2M0gyNDRlUmVZUVR5VXptZGw2WU9K?=
 =?utf-8?B?THJGVi9tSjh1ZjNGSnFtcmlsTGFVWFo0d2JxZFBkSi85T2V1TXVuTU8yWktY?=
 =?utf-8?B?R3hqczFST3dIUWFyN3NHS2VFc2I5ODlKdlprbmpSK0RhUWJBU3pKM2p0QUhY?=
 =?utf-8?B?bStVWkpyZmFEZzBFaitURXJZSFlZbnIzOHJOTGtNeS9nZ2tZYlpnci9WV2RO?=
 =?utf-8?B?WVNkbWdFY2QwZHRnM3NkWG5PUkxMRG1EWVFXMjN2RkdSY25IM3pENHJuUlhQ?=
 =?utf-8?B?N3pQSnJXL1N0MGFLL1EzcnozdmUvOHErSlFESDJZSENUVmdDK1g1a3RydzhL?=
 =?utf-8?B?ZW9vQ2FmdHRSNGt1K252dlBLNngwUHBJTitQSmZYUy9wWGVLNHhYU0d3dUVO?=
 =?utf-8?B?UTFjT3NPY3E4SW45eDRIaUIweUhvOXBQMUVtZUZxcmU1Sk9ycjlZUHhBdXRk?=
 =?utf-8?B?UjVCZFk3T2VFcEdFZlFTV255NENPWEt3OXpYd1l3Tk5aV3BLaHArNE95WndM?=
 =?utf-8?B?dWdvU1B5S0JMMDZiTDg0QnNQQWJXbUxsVjFTYTc2RUN3TXNBMWFVNHJmRW4y?=
 =?utf-8?B?MDJ5ZmZ4RGFHT0J1TGZFQU5KUE1KMDBSQXpZSWxzL3NCNndwRitXU0xGWUJG?=
 =?utf-8?B?Z2tuVlZkcHY2Ky9HbnJRWnU2a0xPeTQ0R3VvWmVRQk1Ib3pRRXpCeXdCRmxK?=
 =?utf-8?B?by8xb0l6NXIwUUZNY2dOdzlvQllmd3IxbXFXOUVTN1l1WGJnSm1XMXRhei9s?=
 =?utf-8?B?YkI2RUVhc1FCNkZuaUVkTForRUJlakJ0Tmp5ekJIUDZvSHkzYWZGdlc0bWVI?=
 =?utf-8?B?Y0luNEdhOUtSOGh1dWpiMmY2TkE5K00wWGRPQy9DZWw2d1FPbG9GeTJkazJW?=
 =?utf-8?B?UDZ6VmZFTU5hUm5ZZXVEVHNqd2laTjUyRXNTQnZpYkMvdlhJeFdhUGtRbXYr?=
 =?utf-8?B?T080SjNYeEovYnFOd2YvNWt4ZHdzcU9NVXdJbXJqQlhBR2pTd0lERy9aVTIw?=
 =?utf-8?B?N0tzV3JJQmNCTW5hTzJXVDAvcGFpMm9wQk8xaDB2ZTdBRU13cjd5WnZTUEtC?=
 =?utf-8?B?Y2tZWTExUHRRVzY1eFh6OW9VMWFjQTd1eHkvQkFLWlBhZHZMYk5ycjRiTmha?=
 =?utf-8?Q?BW+sGKo4qAEF/vQwOaoPKwIzm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5583f3ff-57fe-4d09-5288-08daab55fe4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2022 06:58:25.2862 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 10V0VBt12sY1L5O7IB963cbxTDQuLuYnXbgFXSAIvH+YrPvPLYK6vEzPLCJc04ciH+1jbIS0jFyHxD33t9mK7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6462
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Do the DRIVER_ATOMIC feature
 disable later
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogU2F0dXJkYXksIE9jdG9iZXIgOCwgMjAyMiAyOjQxIEFNDQo+IFRvOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQ
QVRDSCAxLzJdIGRybS9pOTE1OiBEbyB0aGUgRFJJVkVSX0FUT01JQyBmZWF0dXJlDQo+IGRpc2Fi
bGUgbGF0ZXINCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+IA0KPiBDdXJyZW50bHkgd2UgZG8gdGhlIERSSVZFUl9BVE9NSUMgZGlz
YWJsZSBhcyBhbG1vc3QgdGhlIGZpcnN0IHRoaW5nIGR1cmluZw0KPiBwY2kgcHJvYmUuIFRoYXQg
aW52b2x2ZXMgdGhlIHVzZSBvZg0KPiBESVNQTEFZX1ZFUigpIHdoaWNoIGlzIHBlcmhhcHMgYSBi
aXQgc2tldGNoeSBub3cgdGhhdCB3ZSBtYXkgbmVlZCB0byByZWFkDQo+IHRoYXQgb3V0IGZyb20g
dGhlIGhhcmR3YXJlIGl0c2VsZi4NCj4gTG9va3MgbGlrZSB3ZSBkbyBwb3B1bGF0ZSBhIGRlZmF1
bHQgdmFsdWUgZm9yIGl0IGFueXdheSBzbyB0aGUgY3VycmVudCBkb2VzIGF0DQo+IGxlYXN0IHN0
aWxsIHdvcmsuDQo+IA0KPiBCdXQgbGV0J3MgbWFrZSB0aGlzIHNhZmVyIGFueXdheSBhbmQgbW92
ZSB0aGUgY29kZSBpbnRvDQo+IGludGVsX2RldmljZV9pbmZvX3J1bnRpbWVfaW5pdCgpIHdoZXJl
IHdlIGFsc28gaGFuZGxlIHRoZSBzYW1lIHRoaW5nIGZvcg0KPiB0aGUgIUhBU19ESVNQTEFZIGNh
c2UuDQpUaGlzIG1heSBiZSBhIHNhZmVyIHBsYWNlIQ0KTG9va2luZyBhdCB0aGUgZnVuY3Rpb24g
aW50ZWxfZGV2aWNlX2luZm9fcnVudGltZV9pbml0KCkgd2hlcmUgb25seSBoYXJkd2FyZSBjYXBh
YmlsaXRpZXMgYXJlIGhhbmRsZWQgYW5kIHRoaXMgYWxvbmUgaXMgYSBkcm0gZmVhdHVyZSBEUk1f
QVRPTUlDIHRoYXQgd2lsbCBiZSBwbGFjZWQgbGlrZSBhIG9kZCBtYW4uDQpQcm9iYWJseSBvbmNl
IHdlIGhhdmUgdGhlIGNvZGUgdG8gZ2V0IHRoZSBESVNQTEFZX1ZFUiBmcm9tIHRoZSBoYXJkd2Fy
ZSBpbiBwbGFjZSwgaGF2aW5nIHRoaXMgYXQgdGhlIHNhbWUgcGxhY2UgbWlnaHQgbG9vayBjbGVh
bmVyLg0KTWF5YmUgZHJpdmVyX2Vhcmx5X3Byb2JlKCkgd2hlcmUgdGhlIHJlYWRpbmcgb2YgRElT
UExBWV9WRVIgY29kZSBtaWdodCBjb21lIGluIGZ1dHVyZSBtaWdodCBsb29rIHNvbWV3aGF0IGNs
ZWFuZXIuDQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0t
LS0tLS0tLS0tDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJpdmVyLmMgICAgICAgfCA0IC0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RldmljZV9pbmZvLmMgfCA0ICsrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJpdmVyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5j
DQo+IGluZGV4IGZiMzgyNmRhYmU4Yi4uY2ViZTM0N2Y0MjRjIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJpdmVyLmMNCj4gQEAgLTg5NCwxMCArODk0LDYgQEAgaW50IGk5MTVfZHJpdmVy
X3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25zdA0KPiBzdHJ1Y3QgcGNpX2RldmljZV9p
ZCAqZW50KQ0KPiAgCWlmIChJU19FUlIoaTkxNSkpDQo+ICAJCXJldHVybiBQVFJfRVJSKGk5MTUp
Ow0KPiANCj4gLQkvKiBEaXNhYmxlIG51Y2xlYXIgcGFnZWZsaXAgYnkgZGVmYXVsdCBvbiBwcmUt
SUxLICovDQo+IC0JaWYgKCFpOTE1LT5wYXJhbXMubnVjbGVhcl9wYWdlZmxpcCAmJiBESVNQTEFZ
X1ZFUihpOTE1KSA8IDUpDQo+IC0JCWk5MTUtPmRybS5kcml2ZXJfZmVhdHVyZXMgJj0gfkRSSVZF
Ul9BVE9NSUM7DQo+IC0NCj4gIAlyZXQgPSBwY2lfZW5hYmxlX2RldmljZShwZGV2KTsNCj4gIAlp
ZiAocmV0KQ0KPiAgCQlnb3RvIG91dF9maW5pOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RldmljZV9pbmZvLmMNCj4gaW5kZXggOTA4ZWMyNDFmZTcxLi5iNjkxYjdjOGMyNTQgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYw0KPiBAQCAtNTA3
LDYgKzUwNywxMCBAQCB2b2lkIGludGVsX2RldmljZV9pbmZvX3J1bnRpbWVfaW5pdChzdHJ1Y3QN
Cj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJCXJ1bnRpbWUtPmhhc19kbWMgPSBm
YWxzZTsNCj4gIAkJcnVudGltZS0+aGFzX2RzYyA9IGZhbHNlOw0KPiAgCX0NCj4gKw0KPiArCS8q
IERpc2FibGUgbnVjbGVhciBwYWdlZmxpcCBieSBkZWZhdWx0IG9uIHByZS1JTEsgKi8NCj4gKwlp
ZiAoIWRldl9wcml2LT5wYXJhbXMubnVjbGVhcl9wYWdlZmxpcCAmJiBESVNQTEFZX1ZFUihkZXZf
cHJpdikgPA0KPiA1KQ0KPiArCQlkZXZfcHJpdi0+ZHJtLmRyaXZlcl9mZWF0dXJlcyAmPSB+RFJJ
VkVSX0FUT01JQzsNCj4gIH0NCj4gDQo+ICB2b2lkIGludGVsX2RyaXZlcl9jYXBzX3ByaW50KGNv
bnN0IHN0cnVjdCBpbnRlbF9kcml2ZXJfY2FwcyAqY2FwcywNCj4gLS0NCj4gMi4zNS4xDQoNCg==
