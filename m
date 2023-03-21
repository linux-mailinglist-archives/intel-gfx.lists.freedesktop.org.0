Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C16056C2FD5
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 12:09:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B4DF10E762;
	Tue, 21 Mar 2023 11:09:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97E0910E101
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 11:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679396989; x=1710932989;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UeVF3a/KmdKNfC/xsw+PVgcJ6yXRpBRGy1mAQCYp31Q=;
 b=U3K2zj4ilMNdXGnYqrvTbkYassBgXvFMsx4JpBXcPLm74D0krJ7XLIZ4
 /SXJHzvEzdTP6iUTNSTEPggRUezcs+ux5jeQNHInTlbFuOea/exG9KsSl
 vGesIaR8oq9Hxw7w9INOEgJ8F2roCYCjis0eNkJLS0SGqTlaaDHtS+Swy
 mb45X5s0O04QDuRlLrSdWd7m0WeF7fPRf13icsASiCGmz/QsyFVTywGJU
 cAnLJHIM1aKvNx7JoUNNUkweQPNlEXX9vrSbIf54fCRSNhskNCt84LO3G
 jkAAy+Qkwk6AgvMwKx8v+zsNRVQMIYbcqllA95vRFvlCanvGC6hwB/xkr Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="425183841"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="425183841"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 04:09:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="745804760"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="745804760"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 21 Mar 2023 04:09:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 21 Mar 2023 04:09:45 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 21 Mar 2023 04:09:45 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 21 Mar 2023 04:09:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dpvyTfT3z87wFmAtNJJenuD0yopUJWF2lWCqDzZlLu4wZyV8+cFH8lXC2CNgFR8RI9sMVCIKWChoJkfOWa6IrK7vh9Ec/Hk3+W0a0r9jxxfKMfcyLdDPNvKl3RCgI7sXgJuOZET2V1QbMtBeO24adbNaqbMjstkZ+AsEr42+wmwgkzzDcJrILwPKlvlt7d1xMnq9+sargRtWCl9eNAbDu2ONsmDXY0Bxkv13AM4GiDy/lxLTWlvlnQX6aqU2s35FSYWIAQzzz9SH3XAI5fhRyQk2UD7uTxO7tMAleh+egAIpdMWNUIBkhEivcb7hqcc8icYV2H3R/fv7X0ciOw7lqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UeVF3a/KmdKNfC/xsw+PVgcJ6yXRpBRGy1mAQCYp31Q=;
 b=hMSRv1pRMXGZSIYktljw3obxXbYPztgyNBSqAf2cQEElDZXvo6xxTc537LlA95x20YQxLyqSAeEx+G1cX03IYC7SYmis0yT29/Xi1ExveRvwaASBn1wTdVEZQjadxjjcRXkMWRQq0KzGTpVK291rXTzdHpQfIHu/olaD2seAyAsaJQhqJ1EPWhatnVB5KlSt8xHItPRyz1fTr2xgaxNg499CbGeWtxgIJAAgYCpn/Rf4skJBwXVQo+E8MkzFyBYjBKHzTbDOxw4om9I8xIC0Du9LtsWTHGyhXiCfZC3oSjDJTatYMM6cv5bjWNYrfDEPlOaoLwH6AtrpWyv7knljXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CO1PR11MB4898.namprd11.prod.outlook.com (2603:10b6:303:92::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 11:09:42 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%7]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 11:09:42 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 01/14] drm/i915/tc: Abort DP AUX transfer on
 a disconnected TC port
Thread-Index: AQHZWAzrJMgt7CIEwkGzJKZBgV+PGK8FGj8g
Date: Tue, 21 Mar 2023 11:09:41 +0000
Message-ID: <MW4PR11MB70547A0C5A6E323F4DC67826EF819@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
 <20230316131724.359612-2-imre.deak@intel.com>
In-Reply-To: <20230316131724.359612-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CO1PR11MB4898:EE_
x-ms-office365-filtering-correlation-id: 148a861d-99dc-4653-62df-08db29fcc538
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Pfm3LqIf/ohmQrCHY0gZIO1VCi8Ts2MxxyfKTgmJFLDm534nmB65t+rLAwdRmCnVK1EMjArUcJRYEV1NaJ5g0O2qSLhL22er1BMoQRfTXJdgKx3yU3wmkzasS5GqPMjN57hq9idJdRbh1KySgJPMwRuXFcVcIjJV6tMRmDw8XJhAmyKNvR33gIyehOXxI48ASSI9Kkyo974CN/0/OHUHu65jvFNh+SSzD64aa80iOPGcKs7g85tcVYBCSS6tNmBduA0cbl9k3R5aujaV5EzmpXfdTpmPPUq4WWt/aNrX2fqNK63BKnlJfICH8D2hjZvWonprFYSYT1YVbPNRMAzVKKVAHMU7IfKEuFlZovK0gDvoHMkBY6A7dPJ683cCSIDgCr6PTBbQVtHesZjrHKb5mcA50pTXMRf+D4SxMjGUK7kihljy4POH8HsDJjijrVxzg6TKZNpKNAn9+WU15tAZNO4qeltf4g2ssj3TQ3Ty5MVI/e3epTUZ2fOIRTWAW9ichI/MGcThVjSEyjTWiSuwPTAncBVEqerCzlthMIZj2jcvDvAJGwRUUF949rlJ9DfesYeTMhwlEPSSaTPmh4ZVJ6QPK+zPaEf7qWGHPlUU3N8E6n6t22O4Enc/Z/ezn01JskrBeOzSBIQR1phg6VNqNQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(366004)(136003)(376002)(39860400002)(451199018)(53546011)(186003)(38070700005)(82960400001)(966005)(6506007)(26005)(9686003)(110136005)(71200400001)(7696005)(38100700002)(316002)(478600001)(2906002)(86362001)(122000001)(83380400001)(76116006)(55016003)(33656002)(4326008)(66556008)(5660300002)(52536014)(41300700001)(64756008)(8936002)(8676002)(66446008)(66946007)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZU5nTFN2SjZ4MG5WN29XdUI1WWVDaXpuNGYySnljeXBwYnFTWG9iYjV0bFQw?=
 =?utf-8?B?aXJhVS9xMzAxaE5ydkQxSmkrN3MvUW1NNmxXU0FHZzBpQjdwNG1JdzFKRTM1?=
 =?utf-8?B?MFNuZkhZeVlqRHdDVTkvRmZXZUU5T0FrM2N5cTUzTUtuaTJsWHBESXNpZkY2?=
 =?utf-8?B?OEpKT2RGTHZhT2RnanBNU1JDSGFEK3dzSU9nVWpBSFMzWnk5dGVyMnNlVkNM?=
 =?utf-8?B?ZE9hT1pNSXkwaWhQdUJJemN5d2dvb2w3RkJ0ZHQvd2FQRVBCMkJqZ0JpZVBp?=
 =?utf-8?B?NklscFNpaytjRnpkV0VZd2RlYjJzdHBSdE1rUVE2bDhLcFNDZ2hHY09DYTJJ?=
 =?utf-8?B?LzhrbnZEU2hwc1BLdGluenBTc0NCU1FUc2pGQUxjMlVMT0d5UW54c2lrYlAz?=
 =?utf-8?B?cTFvdHdmQ1dJMmk2MHNOQWhqQXNqbnp3dEJiS3ZaK0xCVnVHeUd4M0ROMG5L?=
 =?utf-8?B?bFViOEJSWW5YaWI3N004YUtPUGZ6SHlVSnA4Und6OG13cEFqMXp6Tlo0WFBy?=
 =?utf-8?B?L1VzZzZLaEh1MUJYU2YrMGU5SmorZzBnRGZmNXNBSElYZWpGL09xb2J5dHZj?=
 =?utf-8?B?VVNGU3dZMkw5VUJhb1VienEzN3dHcHFQN09rS21oSEcvNng5M0ljaG01T01y?=
 =?utf-8?B?ZkZFQ0NhbjJ3WDMxSjVlcnp5MDhUN1IyMlFIZ0gxT2hmZkxxd2pMU0VueWtK?=
 =?utf-8?B?UUlJbFlNOHFRcXRMOGVYYVVwYXNMODZLbjYvRVp1alZ4aGYzZUFiaUI2Tktq?=
 =?utf-8?B?OFl0WHd2K251L1VtbVdVWjJGbGZWYjlOdURMNlVUSXRwdldUOUpvZ3VHbFNE?=
 =?utf-8?B?UkVzWWRPd3lxU0VsaFVoWFdhZE5kS1BnaDBobEd6eTd6cWNyck10TGUyU3VI?=
 =?utf-8?B?OStFdHdCRi9VVllxYlVxU2pVYUp5Q3pSSlhLQXd5ajV0OEV0MzMzaDgzbUR1?=
 =?utf-8?B?MmYvVGtQRGdJVUhhekEyQXNLcnRRdnFPaUhZVlk2cHpEZTlKdUViWWM2ZXNa?=
 =?utf-8?B?OUpic2RsaEQyYkpabkwrTGgrNDYrSjMxNlhGVEppKzE5cnRObi93bzE1bmxP?=
 =?utf-8?B?VlZXT25UejJDVytaSEx1K1pON1RoR1oweGpyMjRnVXZCcE5Td2FHMXFYTW5l?=
 =?utf-8?B?TjM4b2kvQ3BsV0NEQ0ZRRmVNYlhXWEoyd0hHOGs2dktlL28wcnA4a29sVTBq?=
 =?utf-8?B?Smg4QzY1VUY3UndUYjJ4d1doZE56VFN3SkdxcGlTZDBYbk5nMlp1QnpEZzJ3?=
 =?utf-8?B?N1VRU1FUYWhuWEtYNm5jZGRPaGU1QkZOaTI1NjZsTG9LTkxsUUQwRnRaYnBq?=
 =?utf-8?B?bHhXcWIvYmZva3JQUm9vajRGSVdZVjdCaW94TFZNUHFjWXJKYjdmaS9OQTg3?=
 =?utf-8?B?QlVuNUx0Q25ROWxMYlVCektqV0hHYzZWRjZjdTVXS0dmL0xOdmNHdSszQVkr?=
 =?utf-8?B?cWV6SElMUGVpL1QwVkFCcmNxekNjQUdCa2tseUV2ZXlIUDlaeUgzOVRseXR2?=
 =?utf-8?B?ZDQ0WHdRNzU5RTBjMk50R1ovMitlKzRoZFdSeTU0ZXpoRXFpNXRXR1YrWEhh?=
 =?utf-8?B?a2ZZL1dYU3AvanRQZkJtVXJNYndxS1o5S24zeUs4blNBc2NhRURWWnZlSENh?=
 =?utf-8?B?bWFMS0RhN1hUakpveTBBOFRoYzJNVXI4TmFRL1JyUWM3a083TnhkZ2NaL1F4?=
 =?utf-8?B?STNHWWFNUzk1UU9oUHd6Mi9NaUc3a2FhcnBOZDFLbXprTlVmOTM1ZVQ3Wmxx?=
 =?utf-8?B?WWJ6dzNnc0NFQVdtSmZkdmxpZ2xRMW5FWHpFTlVXQ0F6YkpGSnJYWm5HU2dN?=
 =?utf-8?B?TFBlbEp4Y3RVZHFjQmJFK05WaGpHRXFmM1BybXF0SGx6SG9tak93U0Z4TUxj?=
 =?utf-8?B?OVhnV1F2SHJOeWR2cTFoQUZIV0tPQ3F1ZllaMmhTTmxkQzFYYXlqSlRnM0ha?=
 =?utf-8?B?bGF1QU1CeWhtZkNLSlYxRVhWWDlJdnRYandsbi9FY1VZYkFKQ3Q5SDBrSWVv?=
 =?utf-8?B?MlplYzVMTnQxUGNGRmtHL20yWk9rNDlmSnlXVmJDOUFiNHdoYUs1QXVCZm1Z?=
 =?utf-8?B?WERXdGNaUkpnMkxtV3ZOdDhFaTI3SG1xaVRDWkpCa01ld2IyWHZEUEF0U0Fk?=
 =?utf-8?Q?wd+sZW9cf6Mv+e4Upq/h+v6P9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 148a861d-99dc-4653-62df-08db29fcc538
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2023 11:09:41.9733 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7VvI/O7jiVGHSPfdZNIGaANQhd4fV6iAmMyvEx4Gz4UJc0bBMTxPjl66COakr8YyagvFYapKZpHFMaT+lf08yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4898
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/14] drm/i915/tc: Abort DP AUX transfer on
 a disconnected TC port
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
Cc: Chris Chiu <chris.chiu@canonical.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMTYsIDIwMjMgMzoxNyBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogQ2hyaXMgQ2hpdSA8Y2hyaXMuY2hpdUBj
YW5vbmljYWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggMDEvMTRdIGRybS9p
OTE1L3RjOiBBYm9ydCBEUCBBVVggdHJhbnNmZXIgb24gYQ0KPiBkaXNjb25uZWN0ZWQgVEMgcG9y
dA0KPiANCj4gT24gVEMgcG9ydHMgdGhlIDRtcyBBVVggdGltZW91dCBjb21iaW5lZCB3aXRoIHRo
ZSA1ICogMzIgcmV0cnkgYXR0ZW1wdHMNCj4gZHVyaW5nIERQQ0QgYWNjZXNzZXMgYWRkcyBhIDY0
MG1zIGRlbGF5IHRvIGVhY2ggYWNjZXNzIGlmIHRoZSBzaW5rIGlzDQo+IGRpc2Nvbm5lY3RlZC4g
VGhpcyBpbiB0dXJuIHNsb3dzIGRvd24gYSBtb2Rlc2V0IGR1cmluZyB3aGljaCB0aGUgc2luayBp
cw0KPiBkaXNjb25uZWN0ZWQgKGZvciBpbnN0YW5jZSBhIGRpc2FibGluZyBtb2Rlc2V0KS4NCj4g
DQo+IFByZXZlbnQgdGhlIGFib3ZlIGRlbGF5IGJ5IGFib3J0aW5nIEFVWCB0cmFuc2ZlcnMgb24g
YSBUQyBwb3J0IHdpdGggYQ0KPiBkaXNjb25uZWN0ZWQgc2luay4NCj4gDQo+IFRoZSBEUCAxLjRh
IGxpbmsgQ1RTICg0LjIuMS41IFNvdXJjZSBEZXZpY2UgSW5hY3RpdmUgSFBEIC8gSW5hY3RpdmUg
QVVYDQo+IFRlc3QiKSBhbHNvIHJlcXVpcmVzIG5vdCB0byBpbml0aWF0ZSBBVVggdHJhbnNmZXJz
IG9uIGRpc2Nvbm5lY3RlZCBEUCBwb3J0cyBpbg0KPiBnZW5lcmFsLCBob3dldmVyIHRoaXMgcGF0
Y2ggZG9lc24ndCBjaGFuZ2UgdGhlIGJlaGF2aW9yIG9uIG5vbi1UQyBwb3J0cywNCj4gbGVhdmlu
ZyB0aGF0IGZvciBhIGZvbGxvdy11cC4NCj4gDQo+IFJlcG9ydGVkLWFuZC10ZXN0ZWQtYnk6IENo
cmlzIENoaXUgPGNocmlzLmNoaXVAY2Fub25pY2FsLmNvbT4NCj4gQ2xvc2VzOiBodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzgyNzkNCj4gU2lnbmVkLW9m
Zi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMgfCAxNSArKysrKysrKysrKysrLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyAgICAgfCAxNSArKysr
KysrKysrKy0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaCAg
ICAgfCAgMSArDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDYgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9hdXguYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
YXV4LmMNCj4gaW5kZXggOTY5NjdlMjFjOTRjMi4uZWIwN2RjNWQ4NzA5OSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jDQo+IEBAIC0yMDUsOCAr
MjA1LDE5IEBAIGludGVsX2RwX2F1eF94ZmVyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+
ICAJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoY2hfZGF0YSk7IGkrKykNCj4gIAkJY2hfZGF0
YVtpXSA9IGludGVsX2RwLT5hdXhfY2hfZGF0YV9yZWcoaW50ZWxfZHAsIGkpOw0KPiANCj4gLQlp
ZiAoaXNfdGNfcG9ydCkNCj4gKwlpZiAoaXNfdGNfcG9ydCkgew0KPiAgCQlpbnRlbF90Y19wb3J0
X2xvY2soZGlnX3BvcnQpOw0KPiArCQkvKg0KPiArCQkgKiBBYm9ydCB0cmFuc2ZlcnMgb24gYSBk
aXNjb25uZWN0ZWQgcG9ydCBhcyByZXF1aXJlZCBieQ0KPiArCQkgKiBEUCAxLjRhIGxpbmsgQ1RT
IDQuMi4xLjUsIGFsc28gYXZvaWRpbmcgdGhlIGxvbmcgQVVYDQo+ICsJCSAqIHRpbWVvdXRzIHRo
YXQgd291bGQgb3RoZXJ3aXNlIGhhcHBlbi4NCj4gKwkJICogVE9ETzogYWJvcnQgdGhlIHRyYW5z
ZmVyIG9uIG5vbi1UQyBwb3J0cyBhcyB3ZWxsLg0KPiArCQkgKi8NCj4gKwkJaWYgKCFpbnRlbF90
Y19wb3J0X2Nvbm5lY3RlZF9sb2NrZWQoJmRpZ19wb3J0LT5iYXNlKSkgew0KPiArCQkJcmV0ID0g
LUVOWElPOw0KDQpUQyBwb3J0IGJlaW5nIGEgcGh5c2ljYWwgb2JqZWN0IHRoaXMgZXJyb3IgY29k
ZSBjb3VsZCBiZSBFTk9ERVYgYXMgd2VsbCwgcmlnaHQ/DQoNCkFueXdheSwgcGF0Y2ggbG9va3Mg
b2sgdG8gbWUuDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwu
Y29tPg0KDQo+ICsJCQlnb3RvIG91dF91bmxvY2s7DQo+ICsJCX0NCj4gKwl9DQo+IA0KPiAgCWF1
eF9kb21haW4gPSBpbnRlbF9hdXhfcG93ZXJfZG9tYWluKGRpZ19wb3J0KTsNCj4gDQo+IEBAIC0z
NjcsNyArMzc4LDcgQEAgaW50ZWxfZHBfYXV4X3hmZXIoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwNCj4gDQo+ICAJaW50ZWxfcHBzX3VubG9jayhpbnRlbF9kcCwgcHBzX3dha2VyZWYpOw0KPiAg
CWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0X2FzeW5jKGk5MTUsIGF1eF9kb21haW4sIGF1eF93YWtl
cmVmKTsNCj4gLQ0KPiArb3V0X3VubG9jazoNCj4gIAlpZiAoaXNfdGNfcG9ydCkNCj4gIAkJaW50
ZWxfdGNfcG9ydF91bmxvY2soZGlnX3BvcnQpOw0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBpbmRleCBmNDUzMjg3MTJiZmYxLi4wNTBmOTk4Mjg0NTky
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IEBAIC03
NjgsMTYgKzc2OCwyMyBAQCB2b2lkIGludGVsX3RjX3BvcnRfc2FuaXRpemVfbW9kZShzdHJ1Y3QN
Cj4gaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gICAqIGNvbm5lY3RlZCBwb3J0cyBh
cmUgdXNhYmxlLCBhbmQgYXZvaWRzIGV4cG9zaW5nIHRvIHRoZSB1c2VycyBvYmplY3RzIHRoZXkN
Cj4gICAqIGNhbid0IHJlYWxseSB1c2UuDQo+ICAgKi8NCj4gK2Jvb2wgaW50ZWxfdGNfcG9ydF9j
b25uZWN0ZWRfbG9ja2VkKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKSB7DQo+ICsJc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPSBlbmNfdG9fZGlnX3BvcnQoZW5jb2Rl
cik7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0
LT5iYXNlLmJhc2UuZGV2KTsNCj4gKw0KPiArCWRybV9XQVJOX09OKCZpOTE1LT5kcm0sICFpbnRl
bF90Y19wb3J0X3JlZl9oZWxkKGRpZ19wb3J0KSk7DQo+ICsNCj4gKwlyZXR1cm4gdGNfcG9ydF9s
aXZlX3N0YXR1c19tYXNrKGRpZ19wb3J0KSAmIEJJVChkaWdfcG9ydC0+dGNfbW9kZSk7IH0NCj4g
Kw0KPiAgYm9vbCBpbnRlbF90Y19wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlcikgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IGVu
Y190b19kaWdfcG9ydChlbmNvZGVyKTsNCj4gIAlib29sIGlzX2Nvbm5lY3RlZDsNCj4gDQo+ICAJ
aW50ZWxfdGNfcG9ydF9sb2NrKGRpZ19wb3J0KTsNCj4gLQ0KPiAtCWlzX2Nvbm5lY3RlZCA9IHRj
X3BvcnRfbGl2ZV9zdGF0dXNfbWFzayhkaWdfcG9ydCkgJg0KPiAtCQkgICAgICAgQklUKGRpZ19w
b3J0LT50Y19tb2RlKTsNCj4gLQ0KPiArCWlzX2Nvbm5lY3RlZCA9IGludGVsX3RjX3BvcnRfY29u
bmVjdGVkX2xvY2tlZChlbmNvZGVyKTsNCj4gIAlpbnRlbF90Y19wb3J0X3VubG9jayhkaWdfcG9y
dCk7DQo+IA0KPiAgCXJldHVybiBpc19jb25uZWN0ZWQ7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3RjLmgNCj4gaW5kZXggZDU0MDgyZTJkNWU4ZC4uOTM4MTMwNTYwNDNh
NSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5o
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaA0KPiBAQCAt
MTcsNiArMTcsNyBAQCBib29sIGludGVsX3RjX3BvcnRfaW5fZHBfYWx0X21vZGUoc3RydWN0DQo+
IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOyAgYm9vbCBpbnRlbF90Y19wb3J0X2luX2xl
Z2FjeV9tb2RlKHN0cnVjdA0KPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsNCj4gDQo+
ICBib29sIGludGVsX3RjX3BvcnRfY29ubmVjdGVkKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyKTsNCj4gK2Jvb2wgaW50ZWxfdGNfcG9ydF9jb25uZWN0ZWRfbG9ja2VkKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyKTsNCj4gDQo+ICB1MzIgaW50ZWxfdGNfcG9ydF9nZXRfbGFuZV9t
YXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsNCj4gIHUzMiBpbnRlbF90
Y19wb3J0X2dldF9waW5fYXNzaWdubWVudF9tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQN
Cj4gKmRpZ19wb3J0KTsNCj4gLS0NCj4gMi4zNy4xDQoNCg==
