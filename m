Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FD37F58EE
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 08:14:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3252310E027;
	Thu, 23 Nov 2023 07:14:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03C4210E027
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 07:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700723674; x=1732259674;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Rqy8kKjdfSlZp8q90lylIXgDoiyu8uXlwX9b0LlA45g=;
 b=CkOmidIi8er3wQxwy5iehmMT3etETHGZC2KNeS99GCcxZqVU7Zsvldtf
 OYMJekIL1nTHIZol55PUqMaP8bek0tzXIuot/sb2F36l+a/ihTWrHOEjf
 jiNVyiBJdfSOVFzIlMkCZpwcPS/eZ4KI+4FDXSgKWkUubgEIIewlK2NaG
 18hXB/0H5Rr+phPRH4NCdUAh14I78Q4+jk3wmP7QSGFVDmt+HMQsZDris
 8X1EWjj+nV89VP6OSFQ4889SEtN64vnN4La+ORuAlKCFhIHdd+v30fTK5
 yfaZNH3xPkla5EW71bAOVDXzWPe6Uv0piYvO0j6Mbo4p0XlBGA8MJaSXC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="458709992"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="458709992"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 23:14:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="833336609"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="833336609"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2023 23:14:33 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 23:14:32 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 23:14:32 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 22 Nov 2023 23:14:32 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 22 Nov 2023 23:14:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DT8w9VCCQ1io8x8LBemd9uSc+g9SNv8Obc0kDdCo9tgEWmpAOqchGwSHLb8b19fglYbTWRTh7kXiftP4zcFjlx9NYm2zLxR0wcfqOICsHY8Du1BdFbwFdwjcMFKwxSb2/K+Q6fsK1iKnoVP+4/DSMPb9Tth9KXrc8vl+IvCKuJ4yapouXAlC1MwYNxP8iuyaB+U4tGtAhCGTcV/dunIHDWMVs/+sFIQ+Ltsl8ZFtfJ6ZQcuTyGuYnxSTor78ccy75WhIZL4LUj4hC0CRP84h9VCy633qfgpL8q3dmvbXtPfGGM/6I65bnG+im0cllDT3OT3301f28/qtexE5jIPxGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rqy8kKjdfSlZp8q90lylIXgDoiyu8uXlwX9b0LlA45g=;
 b=TUKaBWoyGq1DDPA/vg5kpbq00ZpGuHu/PHV5E6CzYRbdVep3oCfOxMpYNxVZ902L7IAMyIVQW5nUJiJ85/CfBriRU0l8GO30MLUJesJqFaVhRuNbVOX95oUQGREDtvgCa/AZkAlN9iez0guIipHF9Qg3fzSI2Vy+N0qdhdcF9MaWSQ8Y9AIii2pQh91ILDjrEsrS/nfu1X3YJMLm07w/g0YMeaRpVFR26Xe/4417DO2T1u5nsE6kV+FRmFshixOrkyOqW+n0QPK7JGqU9S7QjK5zffQowwqGuPG10/LkB/TUnAK/6WSW+AErUjKtsVg1Zj7SjDh/EANd5LwbZ31JzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB4946.namprd11.prod.outlook.com (2603:10b6:303:9e::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7002.28; Thu, 23 Nov 2023 07:14:29 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.7025.019; Thu, 23 Nov 2023
 07:14:29 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/4] drm/i915/psr: Don't send a NULL VSC SDP
Thread-Index: AQHaHXXFP+/67HEy7kyyCJCQlMtoqrCHfngA
Date: Thu, 23 Nov 2023 07:14:29 +0000
Message-ID: <332f5e75434962347225c6bd5b3e2f27867b78e4.camel@intel.com>
References: <20231122093137.1509-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231122093137.1509-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB4946:EE_
x-ms-office365-filtering-correlation-id: 31f05ab8-0b28-4245-318b-08dbebf3d579
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EpK1QDWhgb6pGfngeRTwf9pAvN+2fwhuNcV1AWPzw+OIDiLsPo6y1mR62tWA8te9uoeWbeGAdGZZHaLk51dx6b1KA8qY8MjUz0p5rrvmiPuYtdfEXtCD+f0UJjLQqkOVuxeUNAg97+U4cGjZFUc3C6IagBY6az2hdex8NliSyOAVRwohDQkOa+71dyaIbUrFFzlMo3FmwQQ+A26RXNhR/7cIy5+b5FXl5ntVLRDB6jbiXJC5xkXBWSIreD2s59CMQq+CKG+OtANJj//Fz8yZe6NoKaaGjAjsVheucQfjEgBXJ72YWYvZnRMA70l6ngMUHoE7GNXBpWre+55K4bc8jTSaVh7Ol9CVLJS0ZeS/ydrhJyQDZn1lG2yKBQtTpPLHGBkLinVSmMx8CBvcL/c+4Q/xdHErmdivkDooE4XOwg5P9CMBzqOnzcVCLKdOKNCwYEbLdwbLwKj3gXvSOsgS9KOPbFVq62AbvLW21jHKdNoq7YhJ1dr/U4/mr3PpujlHvLKFMsZSR4mgniI1McoaeVTeHp9R1pky4mtG0nF660YJXaN2QDOshvAAFqpR/MIq2b9yHIuvFCP15fMmx8dweJiSLkrZ1eyu1kTIoF1DvII=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(366004)(396003)(136003)(376002)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(2616005)(38070700009)(82960400001)(86362001)(66556008)(316002)(71200400001)(110136005)(6486002)(36756003)(91956017)(64756008)(966005)(66946007)(66476007)(122000001)(66446008)(83380400001)(26005)(66574015)(6512007)(4001150100001)(2906002)(41300700001)(478600001)(6506007)(5660300002)(8676002)(76116006)(8936002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S0JtWXZwd3h4VWc2UG1yQUpNalBTZS9JZjAyZXpWMXV1U1RkRHNqWkpqc2NS?=
 =?utf-8?B?cXNTSWF4RVdZbXFWWUk1ZW5IMVV0cm1MSmVoR1JLWlYvVDJYWkgwSTZzY3Y5?=
 =?utf-8?B?ekpyQXlEKzM5dFU0WHhiMll1UlBKR2x4aHIyUk55UXdSU0FKRm13Y0VMK3E4?=
 =?utf-8?B?UjBlcDRtTFExeGhaU3hhVU9EY2NoN3hJRDNCblZTeEFXckEwV1dIRjhmVjZY?=
 =?utf-8?B?ZFJNRGFWaW40bFFDUmlTVVA2RU1Bd2ZpMENsMDBNUFp0VG82YVlRVE5lNWMz?=
 =?utf-8?B?UDc4ZmdTbVNEMTFnT25PbGM1ZEFUNnVVSU5wanhrTms3NGZEa1lndVpCRWlQ?=
 =?utf-8?B?dTRpc2U1M05oOFY2RkhHdnNqai9NbUxBeEc3TUNJS0N0ejlMZ1JxbDRDSkVs?=
 =?utf-8?B?b0x1eis0aXVLN0tJSUE5QlJvelk0M0ovcXUzOWpwOGxidHA5cHlUUkZxNllX?=
 =?utf-8?B?OXVwQkU0WlhxQVp1UzFjSG1XU1dibXc2UXZLUTh6N3MwUDZ4R1Z5MTRRbjRr?=
 =?utf-8?B?N2ZvaFgxaml5cE5VM0FEZk8yaFZkQzgyZVU2SHJkTHpQck9XdXNVUWt6TzZh?=
 =?utf-8?B?VnJPVXNHRjlSZEVxUmVocUFxUmd2RWtJN3c3TXk1dTg5OWdXUHh6Sm1ueE5O?=
 =?utf-8?B?aG1oUWdhMFl0T3piVnpFVk5NT2FHbFd3eXJFeW1BVnFYKzVzalUzdVg5STY2?=
 =?utf-8?B?a2NuaHA0TWhOWGZOdEpiM1FsZnRpR2pqby9xQmlrdlZmU2Y0YWlYWjNBT1ZN?=
 =?utf-8?B?N2VxdzJyT01yUnYyTk12QXVMcFVZZWc4QlhwU1VGaTNkUDlRTElRNHQ1dnI1?=
 =?utf-8?B?ejNLWHNZNnlDd1JiUGdmMmFnQVUvblExczhMU0lMZlBucGhMNEdjZk56THor?=
 =?utf-8?B?bXh5MzFqSG9pWW01TXZBL3lZOWFoMEhzUEtMenBaYlFqb2JLMG9lSWZ1clAz?=
 =?utf-8?B?cG83MkpzbnMxbTdFRWZzemd2Z0VGdWZ3THN5cVJMeHNRQVdsNjZ4MHRhTTNt?=
 =?utf-8?B?alBnWjRDV3Z2UW9qZjdrOWlrZW1rTjVJTDdUM2tsQmIwUmVWKzUrWUk4bUs0?=
 =?utf-8?B?bnlaWVRIcDNDeHE4RlBhZmVNZEtGb2t3VUVEVmwrVVVCdXJpU1ZNUGtTWHoz?=
 =?utf-8?B?V0xzUUIrME02dnB4QzU1K0lyNXVxS0c0SmlXUEltbTFVbkdOT1c5VFV5c1pQ?=
 =?utf-8?B?d09haUtZZC80aDNCUEZQc1ZJL3NTZkZQMUdhdkdYWDlqSjl5Z042MjFKZVRR?=
 =?utf-8?B?TGQrOWdBMVV1N2Z6RGlOMjlZWCtnNTFxTzBHb042YWhSTGZMQWpRdjRCNEdK?=
 =?utf-8?B?MW1ML0VxSTJIMnJZWHAzNEVRLzh3Wm8raHRLZTZ2RDlMcGwzZWRxYnlZTTZq?=
 =?utf-8?B?b2YyaFAwc0ZLVWQ5dlRVSWtkUjBiWHpIbVFRVG1OSzRSNzRGbjU1MkwyRTJz?=
 =?utf-8?B?bXEyWVZSMGRjV25WT2VLQm5kNkZUaHp4ZDF5RlBxazlKWGFWbVpVeS9Gek9M?=
 =?utf-8?B?MmtMclZGdldzQk9welNxQkFPVGEySitZL2VjcmF4eThpNSttU1dSUSszR3hG?=
 =?utf-8?B?RHhicHk0bU9RMFQ2YmpWbG1BWXVHaXNURXk5UCsxVXdDVFBNZ1JyUENIVU1N?=
 =?utf-8?B?cHRTK3ZiRG9XakJnMXoxOTNsZlJtOU1XakFRMXpnTFQyNjdzMkFEZi9KNVB5?=
 =?utf-8?B?U2ZEbi9ZM1RGL1NOM0JwdCs1Ylk4R1djU0RNbGdzNUtBblNEUElRUTdYQVJ3?=
 =?utf-8?B?Q3FQSDNhaTBQQjRrUm1Xak9RdDRLekNQR0NueWRZM3dCNDY5dVVHcHJPMGYx?=
 =?utf-8?B?RU96cGRONDN4Zk9zblkwZFZteVh4TmR1N0VDdXRpMVpoZVJsczVSQm1lOHli?=
 =?utf-8?B?TUtTVU51ekw4dERFbDJwYjRENlcxcmdnVmxYQS9ZMm4rNHhTT015dVJVQjJO?=
 =?utf-8?B?aStFd2Y1SjVmeWpaZmJuQXd3QWhsUDZtekY3RGozaWJpa203ZEVHbkpuSElm?=
 =?utf-8?B?Y1d5MUNYQjZPUXdHQ0xvbnV6Q2R5MDdEZkhpSGlHQXphUmx5d2FheWh6N3Jn?=
 =?utf-8?B?c3E0VGdpempkcUJodVN5K29hd1p2QWFURE8rcHBCUkJTVENTYkh0VSszSFpu?=
 =?utf-8?B?VmdtZGZHYmtacDYycUwrZG9ZeXlhYXY0aC85dldqQkZlUG16MStFZlFQS2Rz?=
 =?utf-8?B?SUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2D892AA5FCF9D4468BB1DBFD7ADF7583@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31f05ab8-0b28-4245-318b-08dbebf3d579
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 07:14:29.3778 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OiZIe1Hc7omNeYI8cbyeHejOm32X2mG0RtuXK5uarvuGklA07/E0W114vbfMFF7Ice3LyrI8XFKnc1yY4ksGmwg3mP/cuzwBYNoXB4k/iZs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4946
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/psr: Don't send a NULL VSC SDP
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

T24gV2VkLCAyMDIzLTExLTIyIGF0IDExOjMxICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIFBTUiBjb2RlIGlzIHVuY29uZGl0aW9uYWxseSBlbmFibGluZyB0aGUgVlNDIFNE
UCB3aGV0aGVyIG9yIG5vdA0KPiBQU1INCj4gaXRzZWxmIGlzIGVuYWJsZWQuIFRoaXMgbWVhbnMg
aWYgdGhlIERQIGNvZGUgZGVjaWRlZCBub3QgdG8gdXNlIGEgVlNDDQo+IFNEUCB3ZSdyZSBhbHdh
eXMgdHJhbnNtaXR0aW5nIGEgemVyb2VkIFNEUC4gTm90IHN1cmUgd2hhdCB0aGUNCj4gaGFyZHdh
cmUNCj4gd2lsbCBldmVuIGRvIGluIHRoYXQgY2FzZS4gV2UgYWxzbyBzZWUgYSAiRmFpbGVkIHRv
IHVucGFjayBEUCBWU0MNCj4gU0RQIg0KPiBtZXNzYWdlIG9uIGV2ZXJ5IHJlYWRvdXQgc2luY2Ug
dGhlIERJUCBidWZmZXIgaXMganVzdCBmdWxsIG9mIHplcm9lcy4NCg0KVGhpcyBpcyBhbHJlYWR5
IHRha2VuIGNhcmUgYnkgdGhpcyBwYXRjaCA6DQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9wYXRjaC81NjgyMzQvP3Nlcmllcz0xMjY2NTEmcmV2PTENCg0KSSdtIGFib3V0IHRv
IG1lcmdlIGl0Lg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0t
LQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAzICsrKw0K
PiDCoDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA4ZDE4MDEzMmE3NGIuLjkzMTI5
NTkzNDY1OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IEBAIC0xMzczLDYgKzEzNzMsOSBAQCB2b2lkIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZyhz
dHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiDCoMKgwqDCoMKgwqDCoMKgZWxzZQ0KPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNydGNfc3RhdGUtPmhhc19wc3IgPSBfcHNy
X2NvbXB1dGVfY29uZmlnKGludGVsX2RwLA0KPiBjcnRjX3N0YXRlKTsNCj4gwqANCj4gK8KgwqDC
oMKgwqDCoMKgaWYgKCFjcnRjX3N0YXRlLT5oYXNfcHNyKQ0KPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcmV0dXJuOw0KPiArDQo+IMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlLT5o
YXNfcHNyMiA9IGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKGludGVsX2RwLA0KPiBjcnRjX3N0YXRl
KTsNCj4gwqANCj4gwqDCoMKgwqDCoMKgwqDCoGNydGNfc3RhdGUtPmluZm9mcmFtZXMuZW5hYmxl
IHw9DQo+IGludGVsX2hkbWlfaW5mb2ZyYW1lX2VuYWJsZShEUF9TRFBfVlNDKTsNCg0K
