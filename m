Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C402C5963F9
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 22:50:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFA3510E0F9;
	Tue, 16 Aug 2022 20:50:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2877310E231
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 20:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660682998; x=1692218998;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RLz1e94QpulTih/xQwx5R5k9XRTE/L0KJOyj4T73bT8=;
 b=auTNanbzCAY77ACH/wyXH2FFbxoKZgcMwXoNiWObTIbDwz2qdJVpg41g
 ylE91XrKwaK0sgUtqNwJkmLQ0RNHl9JAwP4z/le/A0Zs42yQRgS8ImMLt
 uBg7rkyoG+9hZLhkBO/zFCjnSlqZP0/S0pFIaUhS9gtFbXluZ1yHRRAdM
 yjl0clDM5TLM4xPGw2x6ieafsk59T1ZF6Ko4Edsvif1JmhGnPrT1UDaxh
 B9/MCecfvJ9ULc9vpbCasu4YIwV7FBFD+2N/gYPOxNjLTrEYzQXFA2JDh
 qrTG/RbynWe/OTeldrpbp/QiwTzD66/P5NDmyI/NP82gBQXA5cgONwJ2M w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="354070944"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="354070944"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 13:49:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="583474980"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 16 Aug 2022 13:49:57 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 13:49:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 13:49:56 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 13:49:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e1A4BO/uMSxKBeRnaJLFKn7ffLXCGwWk/n64AnM2qRLaR6ozDOCI7GSM2ps0mz45jQoJrPSw0HPRkZ84Vxs3tnjpL4qg1rpLQpSsYtM3HbNbcrBQ/agQcasKXfOqcC6OrChoX/UTFOPE6vwicjHJyvbt70zq7IXoMly/Cz32799Tobpyer2P16XXQWwl5gjS1OAn4VZC+a0vvL6ttRVsUNhF2/sVQ85jpZGJuSmz6418phKTKVHakD//d/4a+nmfxwSevwh9eB1i0HR/BD1ANpufTZ4N/3cDZPeLeLLNAeHRTkD0J9Kg1RPpG7oE5hOLmls34HcEm8ANkiCKdQQhAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RLz1e94QpulTih/xQwx5R5k9XRTE/L0KJOyj4T73bT8=;
 b=AslIAR5BMt6VTEaBJkweCZ5OCfMetvLber4Y+qltOmCWR71kKIz4nhFsIn30OhU2/ByDkT3+gftPDBAbL77I8UNquDhzUYC+u+iVc0fKWJ5Ii2O6GCsFfKggIQVATlc2groNdoRKbsD3mzpr47CJCAhld+8WbIrVyVSIBjBk/UCo8S8hsNyUwFVCWUBUzD9KyILCUp594okMZRKPe9ekYNKUgb27u2Sg2F/2NFsba8OT2HIVP570jtxVW1aDMbEmEgWtuIpbVciVtUMyna1A/fO7qJLUP2OA/SATkYwdVv54FtW4OWC6Cv6Rhm/A6I2DINU2G/e0yVGXu7uYYIT7dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4093.namprd11.prod.outlook.com (2603:10b6:208:13f::21)
 by CH2PR11MB4326.namprd11.prod.outlook.com (2603:10b6:610:3c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.15; Tue, 16 Aug
 2022 20:49:55 +0000
Received: from MN2PR11MB4093.namprd11.prod.outlook.com
 ([fe80::59bf:4940:8bf:b0b4]) by MN2PR11MB4093.namprd11.prod.outlook.com
 ([fe80::59bf:4940:8bf:b0b4%7]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 20:49:55 +0000
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>, "Ceraolo
 Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 02/15] mei: add support to GSC extended header
Thread-Index: AQHYfFebw2DYegUICUKMvYIIRnJLHa2eEoyAgBRUZgA=
Date: Tue, 16 Aug 2022 20:49:54 +0000
Message-ID: <MN2PR11MB40938B4B35F406C2A2AECA39E56B9@MN2PR11MB4093.namprd11.prod.outlook.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <20220609231955.3632596-3-daniele.ceraolospurio@intel.com>
 <e01e7373ee621dc27d410e762e810a4cdc246f4a.camel@intel.com>
In-Reply-To: <e01e7373ee621dc27d410e762e810a4cdc246f4a.camel@intel.com>
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
x-ms-office365-filtering-correlation-id: ca7f257d-a1f4-496b-6c73-08da7fc8dfb3
x-ms-traffictypediagnostic: CH2PR11MB4326:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Zk+pNXHg3DB4XSPloGQJSMjVOa0iUspl4ey9eXyg647pUBAu40UZHJlEP0N4DCATRcp+btTIirhfUSbElsrBp3ilANhjjrpQbnjuIKbtJ5DS45i02RhwoOciOfqvdT9NSvKOu8xTD0zW8/fAOsMCLQbsCoyIZ/f+ecBQPvG6B75VgRMAihIk8MO/+3KQo8ATaXHz4GDbVcturaTQF7euVUw8egCg14i+Zw8d8klalgyysDulix3UkYeEe2DDtfBxbDZK56BclPzn1QAMdH/1xQrBCiQVD8Ae0BY7381V4pbMLvPlI8szVMUW8qv3oNmFvVjfDF0i42oFtBREh5fR009Z3rES+YFjJnEFazyHHBAkKYzWPcYGkzmQ3VE74bAXwJ9Mq8rdoyYoBhlu1v5Y576XtoImZVvVRl0qsSLQUfnpRNPtqPzcetb96qEivwTYc2MK11Ke5ipsWGDrc1PQMtY2sWh4J0RpMZPx5fYp8oEg5ev1ZX3Y8PgsmUzafrEo1MId/vreWqNKgEtY2/+1V4jEZdhnlWCGFN2JjqaeCDI0HC+luwjCZPuAVb0G2ROloEJAfb79oFiHosf4Wpx0sWnZw2moq0U/nPfaV5OJRU04utEe0bxVtAzIB3rDyQY9vLhY12RC5b2JA8FbG+Ql1QeJ6aSJwofJMFTGMQ1vitNxZm88EQi3JHcTuq1Y3j357roRzJGDW0/fkul0XEf/of3f6YIrBS1tDOtJaosGVtrYA9ZFHNqcOz5q8ZET72KopwNMKTLejDeEX4asZmv5qSXdx/N6Sl3BlarhBAVeQcUdsDYNtoRHfF+XuEmAbeAa
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4093.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(376002)(366004)(346002)(396003)(82960400001)(26005)(38100700002)(9686003)(122000001)(5660300002)(86362001)(53546011)(38070700005)(71200400001)(478600001)(6506007)(33656002)(8936002)(52536014)(7696005)(66556008)(41300700001)(66946007)(83380400001)(4326008)(76116006)(66476007)(66446008)(2906002)(64756008)(186003)(55016003)(316002)(107886003)(8676002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S2dPNmN0b2dnbUhHcnpJc1lnY1VxWWpDMDJNOXlvN1VQYUYwUHhsUEd2RWg0?=
 =?utf-8?B?ZTNnUFJHUm56NllNdUQ2Wm1COUpnSmhiWlROUDZrS1RmaGd1V1Y1UXg4OVBz?=
 =?utf-8?B?WGNML2JvL0c5Y0w1SlNwUGt4V0t2TGNFdDZOb25CMzQ3bmQ1aGZsajdMQ3Fo?=
 =?utf-8?B?d0x1SnZ3cDZCZHF2VWJpSDhvYWpYV3dabFIzdEplZ08wWUZzQnhXWUR6K0tn?=
 =?utf-8?B?Ulg2R01RcEtKMjJnOEdONCs1UndlNms3eDRsZnBVYytQK1hLdDllOGlvWlJB?=
 =?utf-8?B?dkxJbWlqcytFVGlQMHEyZzd1UjhkZWgrT3pTNE9OaE1WdkFlaEhPR2g1M1BB?=
 =?utf-8?B?RWRkbldGQ1gxMkJSbTV3Q3MyS0ZrQjQ2aHBxSCtLR1lpdWhsd1RTTE5QaU5V?=
 =?utf-8?B?RjdycUdWVGNCSE4yeVhsR2VjSlRDT0RFNXl6Y3RCSjNjZS9DTXhQcUJTS3RI?=
 =?utf-8?B?dkx6aHlEc3dRWDJPR0xrc0N5ZzMzTXNnS05pRkVHUnZNdm4ydEoxRWNhVHNx?=
 =?utf-8?B?cHNtK3N1aktYWUdWVWVoN2VSOVR1R2ZnSFhlN3JrMzdvR25SL1BlN2h5eUFl?=
 =?utf-8?B?V2FrVEttQTdGTHk1WEU5ekVTY0RZenNZWGlPUzdLeHFPMmlYNERHeHJXWUZ0?=
 =?utf-8?B?ZmdjeGFlaWVnbnRmby8wMVhXMzllcWw3REJaVE50TXlXUStPQWpRaE96QXhE?=
 =?utf-8?B?OTJaNkJwbWRhVDVZaldrbmRzb1NnVHBzSUdjSzhucEo4dlRrK3dhalNROHhs?=
 =?utf-8?B?TEFmVUJDOWdyYUlBa1V6NGVUUVp0bVh3YTNhckhHTllBdGY1c3Jpc1NMWUtx?=
 =?utf-8?B?aVVuc1c0ZmhtRjNkRElnWjJYcnh1dTd2eGdwdnZBTldSbmJSNWp4VHFURVFT?=
 =?utf-8?B?WkFOME13RkNNN2VaV01VeDczZU9UQ2g0WTJoeFdqY0oxWkJ5bEloSHNCRWdT?=
 =?utf-8?B?SVN2VGQ5eEhFSG54QkREdnRKdzRJa2RDU3Y1SEN0UUV1T0VKUVFiRkdnUEND?=
 =?utf-8?B?Sk1lMmlIOHZYS2t5UkpzTWpMUVRsa2cyS1RMNGtzaGxEbzc5a0luYk00eHg5?=
 =?utf-8?B?RzBBa2NybFJvdTEzNnNSUjN5QS96ME4xWEZuYnBJM1JmUUNpbVEwQmYzc1I2?=
 =?utf-8?B?RHpQdlFuREFkaWlhYjJEVzZNSTF5WWN0ZGVWZDlqN2lVMnJvYWpDdGp3TTBq?=
 =?utf-8?B?Um4vUVY4OXp6dHQ2Nk5pdFo2RFpxM2hITDhSZnE5M1dnOVJRcXB6WWtlUjYw?=
 =?utf-8?B?TDRZRGNpblFWYlBoV081cHppZDRlQUhyaDZKV3B2QXhPd3pBbWtqNVduOGNz?=
 =?utf-8?B?TWZKSEZ4MmpqM2NTY2pIMGxWclI2RTBHd1Zia3NmZkRBNm9xckZyMG4wOCtP?=
 =?utf-8?B?dHhIWlVyeElkNndLakRITUQ2SUFNY0lYeFBMSHdqNXNtUEd4a1RtVFlkUU1o?=
 =?utf-8?B?cGJMMmpvQ3JMWm9tRGVUS3lrSTY3eXJPOWQ5MEExekxnRmIrSEpJbkFZa0V6?=
 =?utf-8?B?T0VyaDVPN25rVnZhbDFFcXFOWUFNc3FBMVpnYnRCVm9sSFc0WUJBSHZNQkl4?=
 =?utf-8?B?RmdRSEIzcURjR1Z2aEJWWW1hMjlncXJRTDYwVmxVdHVrMFc1TGd4L3N5SVZj?=
 =?utf-8?B?VWdmUDh6ZnhIbllxZndMKy9NNll2Q3U5R2s5S0RHTm9wVVhCMHJoT3RNMkJF?=
 =?utf-8?B?UTFKTytyUTNoYWVjaFY4cDZycnUzOFF2c1RaYS9SM2xWQWVIK24xZkg5b3BS?=
 =?utf-8?B?TGlYMUZidDN2bThZcWpFVU1sWWkrYkRvNmozbUgyZEtNYXFQZUkwL3pXL1ZU?=
 =?utf-8?B?VDVxM2lFc1VnK0V0bXUxUFBZdlZnV0t6R3pmblpoMFU4ZSt4TXB2eGJWZU0z?=
 =?utf-8?B?Q0RaUS8wQmNFZmVaZy9ScjJLSFhrSFZVN2lQV2l2d3lGb250RldMVHlKWjlX?=
 =?utf-8?B?S1JmdVc1WGJTUWc2dnIzT1A3cGxTaEpGakJQNXlqL3JHczNaL2s2WmVpN2ph?=
 =?utf-8?B?amRWdUxYc2lPTHlueXdMeCtVVElsZW1vNTBWd09yN0t6SERXa0JPdmk1M1FV?=
 =?utf-8?B?TmlZTlRsa0RmVTA5dHZaZkdBbkJmRElwS09Wb092dXhwNTZzV2J0a3oxWXdV?=
 =?utf-8?Q?DdbQs9TshPqjaSxTWXCUnWdE0?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4093.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca7f257d-a1f4-496b-6c73-08da7fc8dfb3
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 20:49:54.9298 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fwh3T/gpjvAmMZsMkNTJIY4TJ6iO8qUf1YUeOnWRRhGZODnVK4MJi9T0rPbvWrNn19ZW5yz8nW3JfH4T/zREHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4326
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/15] mei: add support to GSC extended
 header
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
Cc: "Lubart, Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVGVyZXMgQWxleGlzLCBB
bGFuIFByZXZpbiA8YWxhbi5wcmV2aW4udGVyZXMuYWxleGlzQGludGVsLmNvbT4NCj4gU2VudDog
VGh1cnNkYXksIEF1Z3VzdCAwNCwgMjAyMiAwMTowOA0KPiBUbzogQ2VyYW9sbyBTcHVyaW8sIERh
bmllbGUgPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogV2lua2xlciwgVG9tYXMgPHRvbWFzLndpbmtsZXJA
aW50ZWwuY29tPjsgTHViYXJ0LCBWaXRhbHkNCj4gPHZpdGFseS5sdWJhcnRAaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBSZTogW1BBVENIIDAyLzE1XSBtZWk6IGFkZCBzdXBwb3J0IHRvIEdTQyBleHRl
bmRlZCBoZWFkZXINCj4gDQo+IEkgd2FzIGluZm9ybWVkIGJ5IERhbmllbGUgdGhhdCB0aGUgTUVJ
IHRlYW0gaGFkIGRvbmUgdGhlIGZ1bmN0aW9uYWwNCj4gcmV2aWV3cyBhcyBwYXJ0IG9mIHRoZWly
IGRpZmZlcmVudGlhdGVkICJTaWduZWQtb2YtIGJ5IiBwcm9jZXNzIGFuZCBzbyBpIHdhcw0KPiBh
c2tlZCB0byBvbmx5IGRvIGEgYXQgdGhlIHN1cmZhY2UgY29kZS1zeW50YXggLyBjb2RlLXN0cnVj
dHVyZSByZXZpZXcuDQo+IA0KPiBUaGF0IHNhaWQgaSBkaWQgZmluZCBvbmUgaXNzdWUgZmFydGhl
ciBiZWxvdy4NCj4gDQo+IEknbSBhbHNvIGNvbXBlbGxlZCB0byBhZGQgdGhlIGZvbGxvd2luZyBu
aXQsIGJ1dCB0aGlzIGlzIGFib3V0IHByaW9yIGNvZGUsIG5vdA0KPiBuZXcgY29kZSBpbiB0aGVz
ZSBwYXRjaGVzIHNvIHlvdSBjYW4gY2hvb3NlIHRvIGlnbm9yZSB0aGlzOiBJbg0KPiBtZWlfY2xf
aXJxX3dyaXRlLCBtZWlfY2xfd3JpdGUgYW5kIG1laV9jbF9pcnFfcmVhZF9tc2cgZnVuY3Rpb25z
LCB0aGVyZQ0KPiBhcmUgbXVsdGlwbGUgYmxvY2tzIG9mIGNvZGUgdGhhdCByZWZlcmVuY2UgaGVh
ZGVyLWluZGV4LCBoZWFkZXItbGVuZ2h0LA0KPiBidWZmZXItZGF0YSwgYnVmZmVyLXNpemUsIGRy
LXNsb3RzIGFuZCBvdGhlciBwdHIgKyBzaXppbmcgcmVsYXRlZCB2YXJpYWJsZXMgaW4NCj4gZGlm
ZmVyZW50IGxheWVycyB0byBkZWNpZGUgdmFsaWRpdHkgb2YgZGF0YSwgdmFsaWRpdHkgb2Ygc2l6
ZSwgYWJpbGl0eSBmb3Igc3BsaXR0aW5nDQo+IGRhdGEgb3IgZXh0ZW5kaW5nIHZpYSBkbWEtcmlu
Z3MgYW5kIG90aGVyIGNvZGUgZmxvd3MgSSBjYW4ndCByZWFsbHkgbWFrZSBvdXQuDQo+IEl0IHdv
dWxkIGJlIG5pY2UgdG8gaGF2ZSBzZXBhcmF0ZSBoZWxwZXJzIHdpdGggc2VsZi1leHBsYW5hdG9y
eSBuYW1lcyBhbmQNCj4gYWRkZWQgY29tbWVudHMgYWJvdXQgd2hhdCB0aGVzZSBibG9ja3Mgb2Yg
Y29kZSBhcmUgdHJ5aW5nIHRvIGRvIGFuZCBob3cNCj4gdGhleSBpbnRlcmFjdCB3aXRoIHRoZSBl
MmUgZmxvdyBvZiBzZW5kaW5nIGRhdGEgb3IgcmVjZWl2aW5nIGRhdGEgdmlhIHRoZSBpcnENCj4g
YW5kIG1lc3NhZ2UgbGlzdHMuDQoNClRoYW5rcyBmb3IgdGhlIGlucHV0LCB3aWxsIHRyeSB0byBh
ZGRyZXNzIHRoYXQgY29tbWVudCwgaW4gbGF0ZXIgcGF0Y2hlcy4gDQo+IA0KPiANCj4gLi4uYWxh
bg0KPiANCj4gDQo+IE9uIFRodSwgMjAyMi0wNi0wOSBhdCAxNjoxOSAtMDcwMCwgQ2VyYW9sbyBT
cHVyaW8sIERhbmllbGUgd3JvdGU6DQo+ID4gRnJvbTogVG9tYXMgV2lua2xlciA8dG9tYXMud2lu
a2xlckBpbnRlbC5jb20+DQo+ID4NCj4gPiBHU0MgZXh0ZW5kIGhlYWRlciBpcyBvZiB2YXJpYWJs
ZSBzaXplIGFuZCBkYXRhIGlzIHByb3ZpZGVkIGluIGEgc2dsDQo+ID4gbGlzdCBpbnNpZGUgdGhl
IGhlYWRlciBhbmQgbm90IGluIHRoZSBkYXRhIGJ1ZmZlcnMsIG5lZWQgdG8gZW5hYmxlIHRoZQ0K
PiA+IHBhdGguDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9taXNjL21laS9pbnRlcnJ1
cHQuYw0KPiA+IGIvZHJpdmVycy9taXNjL21laS9pbnRlcnJ1cHQuYyBpbmRleCAwNzA2MzIyMTU0
Y2IuLjBhMGU5ODRlNTY3MyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL21pc2MvbWVpL2ludGVy
cnVwdC5jDQo+ID4gKysrIGIvZHJpdmVycy9taXNjL21laS9pbnRlcnJ1cHQuYw0KPiA+IEBAIC05
OCw5ICs5OCwxMiBAQCBzdGF0aWMgaW50IG1laV9jbF9pcnFfcmVhZF9tc2coc3RydWN0IG1laV9j
bCAqY2wsDQo+ID4gIAlzdHJ1Y3QgbWVpX2RldmljZSAqZGV2ID0gY2wtPmRldjsNCj4gPiAgCXN0
cnVjdCBtZWlfY2xfY2IgKmNiOw0KPiA+DQo+ID4gKwlzdHJ1Y3QgbWVpX2V4dF9oZHJfdnRhZyAq
dnRhZ19oZHIgPSBOVUxMOw0KPiA+ICsJc3RydWN0IG1laV9leHRfaGRyX2dzY19mMmggKmdzY19m
MmggPSBOVUxMOw0KPiA+ICsNCj4gPiAgCXNpemVfdCBidWZfc3o7DQo+ID4gIAl1MzIgbGVuZ3Ro
Ow0KPiA+IC0JaW50IGV4dF9sZW47DQo+ID4gKwl1MzIgZXh0X2xlbjsNCj4gPg0KPiA+ICAJbGVu
Z3RoID0gbWVpX2hkci0+bGVuZ3RoOw0KPiA+ICAJZXh0X2xlbiA9IDA7DQo+ID4gQEAgLTEyMiwx
OCArMTI1LDI0IEBAIHN0YXRpYyBpbnQgbWVpX2NsX2lycV9yZWFkX21zZyhzdHJ1Y3QgbWVpX2Ns
ICpjbCwNCj4gPiAgCX0NCj4gPg0KPiA+ICAJaWYgKG1laV9oZHItPmV4dGVuZGVkKSB7DQo+ID4g
LQkJc3RydWN0IG1laV9leHRfaGRyICpleHQ7DQo+ID4gLQkJc3RydWN0IG1laV9leHRfaGRyX3Z0
YWcgKnZ0YWdfaGRyID0gTlVMTDsNCj4gPiAtDQo+ID4gLQkJZXh0ID0gbWVpX2V4dF9iZWdpbiht
ZXRhKTsNCj4gPiArCQlzdHJ1Y3QgbWVpX2V4dF9oZHIgKmV4dCA9IG1laV9leHRfYmVnaW4obWV0
YSk7DQo+ID4gIAkJZG8gew0KPiA+ICAJCQlzd2l0Y2ggKGV4dC0+dHlwZSkgew0KPiA+ICAJCQlj
YXNlIE1FSV9FWFRfSERSX1ZUQUc6DQo+ID4gIAkJCQl2dGFnX2hkciA9IChzdHJ1Y3QgbWVpX2V4
dF9oZHJfdnRhZyAqKWV4dDsNCj4gPiAgCQkJCWJyZWFrOw0KPiA+ICsJCQljYXNlIE1FSV9FWFRf
SERSX0dTQzoNCj4gPiArCQkJCWdzY19mMmggPSAoc3RydWN0IG1laV9leHRfaGRyX2dzY19mMmgN
Cj4gKilleHQ7DQo+ID4gKwkJCQljYi0+ZXh0X2hkciA9IGt6YWxsb2Moc2l6ZW9mKCpnc2NfZjJo
KSwNCj4gR0ZQX0tFUk5FTCk7DQo+ID4gKwkJCQlpZiAoIWNiLT5leHRfaGRyKSB7DQo+ID4gKwkJ
CQkJY2ItPnN0YXR1cyA9IC1FTk9NRU07DQo+ID4gKwkJCQkJZ290byBkaXNjYXJkOw0KPiA+ICsJ
CQkJfQ0KPiA+ICsJCQkJYnJlYWs7DQo+ID4gIAkJCWNhc2UgTUVJX0VYVF9IRFJfTk9ORToNCj4g
PiAgCQkJCWZhbGx0aHJvdWdoOw0KPiA+ICAJCQlkZWZhdWx0Og0KPiA+ICsJCQkJY2xfZXJyKGRl
diwgY2wsICJ1bmtub3duIGV4dGVuZGVkDQo+IGhlYWRlclxuIik7DQo+ID4gIAkJCQljYi0+c3Rh
dHVzID0gLUVQUk9UTzsNCj4gPiAgCQkJCWJyZWFrOw0KPiA+ICAJCQl9DQo+ID4gQEAgLTE1Nyw2
ICsxNjgsMjggQEAgc3RhdGljIGludCBtZWlfY2xfaXJxX3JlYWRfbXNnKHN0cnVjdCBtZWlfY2wg
KmNsLA0KPiA+ICAJCWNiLT52dGFnID0gdnRhZ19oZHItPnZ0YWc7DQo+ID4gIAl9DQo+ID4NCj4g
PiArCWlmIChnc2NfZjJoKSB7DQo+ID4gKwkJdTMyIGV4dF9oZHJfbGVuID0gbWVpX2V4dF9oZHJf
bGVuKCZnc2NfZjJoLT5oZHIpOw0KPiA+ICsNCj4gPiArCQlpZiAoIWRldi0+aGJtX2ZfZ3NjX3N1
cHBvcnRlZCkgew0KPiA+ICsJCQljbF9lcnIoZGV2LCBjbCwgImdzYyBleHRlbmRlZCBoZWFkZXIg
aXMgbm90DQo+IHN1cHBvcnRlZFxuIik7DQo+ID4gKwkJCWNiLT5zdGF0dXMgPSAtRVBST1RPOw0K
PiA+ICsJCQlnb3RvIGRpc2NhcmQ7DQo+ID4NCj4gQWxhbjogSXQgbG9va3MgdG8gbWUgdGhhdCBj
b2RlIGp1bXAgd2hlcmUgImRpc2NhcmQiIGJlZ2lucywgcHV0cyBjYiBiYWNrIGludG8NCj4gYSBs
aW5rZWQgbGlzdCBmb3IgZnV0dXJlIHJlLXVzZS4NCj4gSG93ZXZlciwgaXQgZG9lc24ndCBmcmVl
IGNiLT5leHRfaGRyIChvciBhdCBsZWFzdCBmcm9tIHdoYXQgaSBjYW4gdGVsbCkuIFRodXMsDQo+
IGlmIHdlIGFscmVhZHkgYWxsb2NhdGVkIGNiLT5leHRfaGRyIChmcm9tIGFib3ZlIHdoZW4gImNh
c2UNCj4gTUVJX0VYVF9IRFJfR1NDOiIgaXMgdHJ1ZSwgYW5kIGlmIHdlIGVuZCB1cCBkaXNjYXJk
aW5nIGhlcmUgb3IgaW4gdGhlDQo+IGZvbGxvd2luZyBmZXcgbGluZXMsIHRoZW4gd2UgbWF5IGVu
ZCB1cCBsZWFraW5nIG1lbW9yeSBpZiB3ZSBkb250IGZyZWUgY2ItDQo+ID5leHRfaGRyIGJldHdl
ZW4gZGlzY2FyZCBhbmQgbmV4dCByZXVzZS4NCg0KVGhlIGNiIGlzIG5vdCByZXVzZWQsIGl0IGlz
IHB1dCBvbiB0aGUgY29tcGxldGlvbiBsaXN0LCBhbGwgY29tcGxldGVkIGNicyBmcmVlZCB2aWEN
Cm1laV9pb19jYl9mcmVlKCkgZnVuY3Rpb24gd2hpY2ggYWxzbyBmcmVlcyB0aGUgZXh0X2hkci4g
DQoNCj4gPiArCQl9DQo+ID4gKw0KPiA+ICsJCWlmIChsZW5ndGgpIHsNCj4gPiArCQkJY2xfZXJy
KGRldiwgY2wsICJubyBkYXRhIGFsbG93ZWQgaW4gY2Igd2l0aCBnc2NcbiIpOw0KPiA+ICsJCQlj
Yi0+c3RhdHVzID0gLUVQUk9UTzsNCj4gPiArCQkJZ290byBkaXNjYXJkOw0KPiA+ICsJCX0NCj4g
PiArCQlpZiAoZXh0X2hkcl9sZW4gPiBzaXplb2YoKmdzY19mMmgpKSB7DQo+ID4gKwkJCWNsX2Vy
cihkZXYsIGNsLCAiZ3NjIGV4dGVuZGVkIGhlYWRlciBpcyB0b28gYmlnICV1XG4iLA0KPiBleHRf
aGRyX2xlbik7DQo+ID4gKwkJCWNiLT5zdGF0dXMgPSAtRVBST1RPOw0KPiA+ICsJCQlnb3RvIGRp
c2NhcmQ7DQo+ID4gKwkJfQ0KPiA+ICsJCW1lbWNweShjYi0+ZXh0X2hkciwgZ3NjX2YyaCwgZXh0
X2hkcl9sZW4pOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiAgCWlmICghbWVpX2NsX2lzX2Nvbm5lY3Rl
ZChjbCkpIHsNCj4gPiAgCQljbF9kYmcoZGV2LCBjbCwgIm5vdCBjb25uZWN0ZWRcbiIpOw0KPiA+
ICAJCWNiLT5zdGF0dXMgPSAtRU5PREVWOw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21pc2Mv
bWVpL21laV9kZXYuaCBiL2RyaXZlcnMvbWlzYy9tZWkvbWVpX2Rldi5oDQo+ID4gaW5kZXggN2M1
MDhiY2E5YTAwLi44NjIxOTBiMjk3YWEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9taXNjL21l
aS9tZWlfZGV2LmgNCj4gPiArKysgYi9kcml2ZXJzL21pc2MvbWVpL21laV9kZXYuaA0KPiA+IEBA
IC0yMTEsNiArMjExLDcgQEAgc3RydWN0IG1laV9jbF9jYiB7DQo+ID4gIAlpbnQgc3RhdHVzOw0K
PiA+ICAJdTMyIGludGVybmFsOjE7DQo+ID4gIAl1MzIgYmxvY2tpbmc6MTsNCj4gPiArCXN0cnVj
dCBtZWlfZXh0X2hkciAqZXh0X2hkcjsNCj4gPiAgfTsNCj4gPg0K
