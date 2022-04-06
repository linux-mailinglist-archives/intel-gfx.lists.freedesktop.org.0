Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 304454F5A84
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 12:15:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34E3210F10F;
	Wed,  6 Apr 2022 10:15:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E87710E440
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 10:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649240140; x=1680776140;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=xa9hUoBYwGBUIS1tEVrJaEfwEp6geEJf9yqeRKZAmAM=;
 b=etyCD/J20rNqt09297s8p2dWlpA28wf25mdP21YhxHEZ61U4nAcQKmrp
 GOGT1tRrfdM8n6fnnZnG5p4bbCk4ezWDQJuRUuBvjihOPW5w9DWdddr1u
 8G3jRZnm0lxWRM98HpTZpjSSygmX4YfNxvItHxf7hlS3aKmY7n0C4PI5L
 N4fTiNNbefsfQmf/73kAQYUNMVkJCMA9A53BslGwxy3iNbAHKPnCjylcQ
 HH2V1gTpGN41BrrmylQxoRGPTA2qL0+sivC7WGXACiEJjzqaTyG04AS4Y
 9Y67pXFrn8jbsWoET0QHn4DOiG70taPxtyhYmCj3RF0NlUmX2RB+sw+Ax g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="347449365"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="347449365"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 03:15:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="652296225"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga002.fm.intel.com with ESMTP; 06 Apr 2022 03:15:40 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Apr 2022 03:15:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Apr 2022 03:15:39 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 6 Apr 2022 03:15:39 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 6 Apr 2022 03:15:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=isbBXZWo3xZ8GI3EUh/h4+eLZbdQmS0Pkt0KxnNxBHQ7oYCcXDAEiR+iEWv2bbP/+lkD/23nSwuNYLNlL1XyXpMvD0QTF60EnQkROY2fLRrIEEEcvxt4pg5KmGDufT/bY9MpoT6xkHtAIsgY2ZVr5HB/Lzm/uvs3FsxBRceYfjQ/o8+x2LNZe4W8pZ+EJUVZ7+Docm2Z767WowLsSGzYhNXDM1/AA3W3jLZ2n4wS27Gwwzt/FlMW4qVhy9/lX5uDjoR+tZrRTrWsn0yoClbiyvoO4MJkHKtVNZ2SKUXdU8NSfQKpXtktIaV8bAZ2Q6qYI+5D6GPafJfY9droxJx8Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xa9hUoBYwGBUIS1tEVrJaEfwEp6geEJf9yqeRKZAmAM=;
 b=IHePsL+H+p8NBh2y21vGTqxIvTCtucfJ7NvXb3QjwvSM4HC/og5p3NAB9wulvfzyWHTEu/TGOaRtDGm/Kjp9E6s8mXD2p0gr84aFZlCOUWeG52Nusls5wArwlVyNUFtkrSgiWBAtzTcQ9w7OUP6L+gt0cXSL/Rth63zFnXHgE/Rkxiu6FWREDKmBx2HBNnOgKvt+x5wJrR2P1V7PoaI+Rhp2mPONPlVUitZfjvqz3MqVKDhwrx0fUiuvgh7crx8cSam3W5+4i5/t0rUNHs6QgfD92jOibQinVOk8AM+2fbbWkijWxnqo9ix4zOOf4Nsehgf1dCl14KT7y7tprWOqGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by CH0PR11MB5411.namprd11.prod.outlook.com (2603:10b6:610:d2::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.21; Wed, 6 Apr
 2022 10:15:36 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c%7]) with mapi id 15.20.5123.031; Wed, 6 Apr 2022
 10:15:36 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Fix skl_pcode_try_request function
Thread-Index: AQHYSNmZp1g4zlUZC0ugQ5TdFdIzQKzh3JeAgACnC4CAABlygIAACuqAgAAE0AA=
Date: Wed, 6 Apr 2022 10:15:36 +0000
Message-ID: <3cdcf7822df84335b80eec0fcfbe25df0d228419.camel@intel.com>
References: <20220405104114.20780-1-stanislav.lisovskiy@intel.com>
 <9436bf0c9b30a5d69a4d3a5cb23304b2f2ed1c5c.camel@intel.com>
 <20220406074813.GA14848@intel.com>
 <8fdb6de96d0515784d946cc2639e9f2de583abb8.camel@intel.com>
 <20220406095821.GA20432@intel.com>
In-Reply-To: <20220406095821.GA20432@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b619ac47-2391-4f9f-4b02-08da17b664b6
x-ms-traffictypediagnostic: CH0PR11MB5411:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CH0PR11MB5411554F7C11FD71654F582FF6E79@CH0PR11MB5411.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1fr/Z2gLUZmV8d5hODf0hDcJuZ5Wy7TBwF8gZ6BqUnuYNJCs+RgyirGZJZE+uw3WK145iZO9nf08yi0tWjHVzsSHjXd7AcCo4zVXiAGhHU03VvKiGxiADn2nnBiRzNITWf3WkctZqNb9Q0fxJk8L5a3qTw6N/NmA1hsSnbGa2Wt3vmqzMHSLUmkteb0wR8O2UOs0fLaomvMtxiKNIP1qcbmfNpi/KCcz0ozOAMu2MhMEHWF654mpDIVMbkFKtYEfwY88Ftb5GntKsAeZ4ZBdMuQRuQ0Iva9aS5JAVLhCX3QQyluVenL8G38q2B1egZhVgSpNq139c+5L7CFfraLBcWWxNsUG0iHUBsSk8qMZEkjrVm4CLY/GlEyAb66RIGhHoWdD5Cz+KIEFFyrn+p+HUc+2MVax6Wvpki9/Ip9hq2XMfzB7tPmo7em4vxWk1oYvWugU6fnEPEcN3AfoztNVT6RyPWLDQRNuu68ceX/r/doGnzceJobTdCqA/j3NcYEt3yFF/LL772sLh2O7hZwL9mjBJB/mgNZwPK5N1r3PhBq590dO2bi/rN2V/PrNaVXoCppVdOHStoHxnt/fCYzXok/+uZF9QKODi9IadFnriQB6OE8bUjEgwIIT7AgE3pE0a4I7D2Nmjxe+isD48Cd7CWRwcuX5G/cKsQcGdE+9N4E/YwCvrihy3QilpiEIeY9vpk3pWby9UWrscbwJBOGBAw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(508600001)(6512007)(6506007)(83380400001)(26005)(2616005)(186003)(2906002)(5660300002)(8936002)(37006003)(6636002)(316002)(6486002)(71200400001)(66946007)(91956017)(66446008)(66556008)(4326008)(6862004)(8676002)(64756008)(66476007)(76116006)(36756003)(122000001)(82960400001)(86362001)(38100700002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YmRoV3FnQ2pxNEhJYnJodXhESW9vWGo1bWVlY2ZNYnN4SmVsSWVXaU90N3dI?=
 =?utf-8?B?K3I3ZTFNM1o0NFZXQXNqT1ZKeWFRYW1mU2hFWmFJZlUxNUozcW1RUm4zYzR4?=
 =?utf-8?B?ZUppUjZNbkdJclFiQSs5QWtBY2dEOXV2N3RsRElmRk5GQmRiQXZlUCtRNnV6?=
 =?utf-8?B?Mk9DV0NTVTdGcE8vNklVcW5ZQ0JsMnRjZVhwd2tRQWxFZU0yUzRjbFZiaVls?=
 =?utf-8?B?TkVZZTAxanBIWDVydE1NUGJ5U0wyQWoybWZvbDJZcFp5enE3a3pRS3dkSy9j?=
 =?utf-8?B?WDhseGhmWmVJaUZUTGdyeTAwV1llekllTVdiTDdsRzVyVm9zZmtLQUVYb0xO?=
 =?utf-8?B?ZzVSaHhOTWczSHFyY2VsdjJQK1lBQVpjQy9mWFNDRUQxanVGNXdNdXFmRGMx?=
 =?utf-8?B?ZXhrYVNSU0JEaHBhK1o0K3VkeXNLVlphaDU5VnFVbTRXbWhGcTdUck9SYVg4?=
 =?utf-8?B?SXBISlgrQ2tIY296bkdMOGwyajBRcmVRS1hFbEZQVWVRZjJzbUxHbDNhUUd1?=
 =?utf-8?B?dVZEQTdvRXV0Z0JYWGdOSzBVcWRQb21Ea2NRWTY4N0ppSlFUcks3cEV6b2NF?=
 =?utf-8?B?WkpPelAxdXFONDRCc3FVM0EzbGM3ZmFSZnozWUsrVEtkcUhaSWhNRWlsWG9v?=
 =?utf-8?B?MHBCc1hpVW1nM0MzY29WVUk5SE1QUzVnRWxPZThHREtiUkxwU081RG9PUXVE?=
 =?utf-8?B?cUowQ1FRWDBHcVNnWjdRMDhXdzZtNTIzb1ZwS3Z0UktQUFhOSXRPMUwzdjZq?=
 =?utf-8?B?Sm93dWl3c0g0SjU2eWlNS3BIVTFIdWw5WnJLNDcwcVZoYXk4S2t1dkpsVjlV?=
 =?utf-8?B?aGdDVWl6V29oRlFuYTBydHFjOE1vbWd6U3IzeEZHcHdPcWF4NkU2bVZtOWNo?=
 =?utf-8?B?dzdMNEJONHhPSU8xeDNmWE5YYTF3dU5aaUl0MTI5d25MclJBb2pWSDhLRUE3?=
 =?utf-8?B?b0NsOTNTcWMvMGppRmVxRndnWGI2czRXNmNqUmR0TGYxcXJiNGhUTERyU3l3?=
 =?utf-8?B?NjQ0RXUxMDB6b1lrQTJnd01JVE1rMHFGU0ZvUnQzS1pjYlhaeDg4YklKUWxs?=
 =?utf-8?B?VG92ZnU0aEt6QU1KQm9WbWgxSnUrM25jY3Z1OXVoaGpUMkVGdis2LzJUNk5n?=
 =?utf-8?B?eGRWajhFYXJIanRLRnNEMkw0S200b21NRlhscjRQYXdmZjFYNGZ4aHFueXV3?=
 =?utf-8?B?Mm1kSFo0QWtYU29PcXh0ZWVzdnFETkxGaWVWWGp1VnNrSkRDR0hWSHk4RHdw?=
 =?utf-8?B?enlKanpnK05tdU9JVHMybWpBbmlobkJHSEFmNU4xTTNHdUw2NUNZTmpYRlBT?=
 =?utf-8?B?dEdKNjVVK3MvRlhEemdGaHpXUit6SUpuNHdmVk9Ia21nMTN5Ry9HZVdnUWZE?=
 =?utf-8?B?dFpreWF1ZldOODJ1UWpPWGprTFZNb2l2WjJ2SXJORVdtVmhvRE0vV1VkVU9M?=
 =?utf-8?B?cEUvM1ZXd0Y0ZU9pUjZyVUhITW0xek11MGNpQ0JtSVM0WG50eDZQazZWdUtM?=
 =?utf-8?B?WW9QVGRiVEowY1RrdjZnQXBzd1JFUXJvZ3VMczY0bEZ1YzJrS2tIYWRVcy8y?=
 =?utf-8?B?RFhzUUdmOVdzOWlrdFJjc2F4ZWd5VUoySnhMdjQvdTY0OHRqbmdWODd4OVpE?=
 =?utf-8?B?NE4vZkNjWnBJeG5FNmo3dVdUNTZiLytTSklPd2F6VXNRMHlrY05oZ2ZHaWhV?=
 =?utf-8?B?SmlLOEF4SUhZVHNLMHJNVnBrRWdaOWwvdlVySW8vdE9yZEtXNEtTNjM5VC9O?=
 =?utf-8?B?YytVWktJY3U2enJyYkFSVU5PbnRneFVwd2dvdTBMY3pEUE9IaEtvYytqZEFX?=
 =?utf-8?B?dGFIZU4vMEY1a1QwS0h6UUJrZnExNjBWcmVTbENoYkFVeVkwdXNFZG9uTHph?=
 =?utf-8?B?eFNqVmxUWW5KZE5xVTRzYjBJUmk1d0RKSi9JWG9GT3VUTjdjWXYvQlhPa0pz?=
 =?utf-8?B?R1FleTZvYVNRVjJSZWpGQmg3ekhYVk5qUXg2Z1lKa3NiWWYwMnBHWEVpcld5?=
 =?utf-8?B?K3I0ZldqSDZLYUNVc1A4SkdrbFJ5VWhOTEpGN1dMUlNXZ3VUZmpUMjR6WHVU?=
 =?utf-8?B?RnRaWnZESU9iRWpMUHB3Q0Z0eERnRCtTc1VQYmRISEdNendMSkxvS09iOEdO?=
 =?utf-8?B?TXR2VHVpTjJocGpkNktWREkrY0ExY0RXQ0FreDZkRVVtYlFSQWRCMzJnNDMv?=
 =?utf-8?B?K3VrT2ZyNVAyT1ZxRkNUOEtRNGNkK3dYSitrS1VkeHNiaCtLejZCM1V2ZVdH?=
 =?utf-8?B?QS9CekhhbXo1ZHp4V0xDRThYalIrVWFYREZiaGxSV0tBTE9YaGlzU1ZPTDIv?=
 =?utf-8?B?eDVyblZlSHVSTDNEeVcxNUVkM2RydmpJOG5WbVZ0cHJXNjVCN3BVbFlTVUJW?=
 =?utf-8?Q?mDVBwN7mtejd6MKG1rSwe2EJFzLbmSK8+otXB?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FB0099DBD054D247BEC408121FE91C14@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b619ac47-2391-4f9f-4b02-08da17b664b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2022 10:15:36.6564 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: da+z4heGJugnpMDrQ7FH94N/PbNjfQ41UagN5pF7zkZDkiNNNhcbZ/YWf03d2Iemmgbl87TG1WykkVt2emezjZ0GesxAjq4v1DrQwPbzUQE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5411
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix skl_pcode_try_request function
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIyLTA0LTA2IGF0IDEyOjU4ICswMzAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3
cm90ZToNCj4gT24gV2VkLCBBcHIgMDYsIDIwMjIgYXQgMTI6MTk6MTlQTSArMDMwMCwgR292aW5k
YXBpbGxhaSwgVmlub2Qgd3JvdGU6DQo+ID4gSGksDQo+ID4gDQo+ID4gT24gV2VkLCAyMDIyLTA0
LTA2IGF0IDEwOjQ4ICswMzAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3cm90ZToNCj4gPiA+IE9u
IFdlZCwgQXByIDA2LCAyMDIyIGF0IDEyOjUxOjI5QU0gKzAzMDAsIEdvdmluZGFwaWxsYWksIFZp
bm9kIHdyb3RlOg0KPiA+ID4gPiBIaSBTdGFuDQo+ID4gPiA+IA0KPiA+ID4gPiBOaWNlIEZpbmQh
IENvdXBsZSBvZiBjbGFyaWZpY2F0aW9ucywgcGxlYXNlIGNoZWNrIGlubGluZS4uLg0KPiA+ID4g
PiANCj4gPiA+ID4gT24gVHVlLCAyMDIyLTA0LTA1IGF0IDEzOjQxICswMzAwLCBTdGFuaXNsYXYg
TGlzb3Zza2l5IHdyb3RlOg0KPiA+ID4gPiA+IEN1cnJlbnRseSBza2xfcGNvZGVfdHJ5X3JlcXVl
c3QgZnVuY3Rpb24gZG9lc24ndA0KPiA+ID4gPiA+IHByb3Blcmx5IGhhbmRsZSByZXR1cm4gdmFs
dWUgaXQgZ2V0cyBmcm9tDQo+ID4gPiA+ID4gc25iX3Bjb2RlX3J3LCBidXQgdHJlYXRzIHN0YXR1
cyAhPSAwIGFzIHN1Y2Nlc3MsDQo+ID4gPiA+ID4gcmV0dXJuaW5nIHRydWUsIHdoaWNoIGJhc2lj
YWxseSBkb2Vzbid0IGFsbG93DQo+ID4gPiA+ID4gdG8gdXNlIHJldHJ5L3RpbWVvdXQgbWVjaGFu
aXNtcyBpZiBQQ29kZSBoYXBwZW5zDQo+ID4gPiA+ID4gdG8gYmUgYnVzeSBhbmQgcmV0dXJucyBF
R0FJTiBvciBzb21lIG90aGVyIHN0YXR1cw0KPiA+ID4gPiA+IGNvZGUgbm90IGVxdWFsIHRvIDAu
DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gV2Ugc2F3IHRoaXMgb24gcmVhbCBodyBhbmQgYWxzbyB0
cmllZCBzaW11bGF0aW5nIHRoaXMNCj4gPiA+ID4gPiBieSBhbHdheXMgcmV0dXJuaW5nIC1FQUdB
SU4gZnJvbSBzbmJfcGNvZGVfcncgZm9yIDYgdGltZXMsIHdoaWNoDQo+ID4gPiA+ID4gY3VycmVu
dGx5IHdpbGwganVzdCByZXN1bHQgaW4gZmFsc2Ugc3VjY2Vzcywgd2hpbGUgaXQgc2hvdWxkDQo+
ID4gPiA+ID4gaGF2ZSB0cmllZCB1bnRpbCB0aW1lb3V0IGlzIHJlYWNoZWQ6DQo+ID4gPiA+ID4g
DQo+ID4gPiA+ID4gWyAgIDIyLjM1NzcyOV0gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm06aW50ZWxf
Y2RjbGtfZHVtcF9jb25maWcgW2k5MTVdXSBDaGFuZ2luZyBDRENMSyB0bw0KPiA+ID4gPiA+IDMw
NzIwMCBrSHosIFZDTyA2MTQ0MDAga0h6LCByZWYgMzg0MDAga0h6LCBieXBhc3MgMTkyMDAga0h6
LCB2b2x0YWdlIGxldmVsIDANCj4gPiA+ID4gPiBbICAgMjIuMzU3ODMxXSBpOTE1IDAwMDA6MDA6
MDIuMDogW2RybTpfX3NuYl9wY29kZV9ydyBbaTkxNV1dIFJldHVybmluZyBFQUdBSU4gcmV0cnkg
MQ0KPiA+ID4gPiA+IFsgICAyMi4zNTc4OTJdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOnNrbF9w
Y29kZV9yZXF1ZXN0IFtpOTE1XV0gU3VjY2VzcywgZXhpdGluZw0KPiA+ID4gPiA+IFsgICAyMi4z
NTc5MzZdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtXSBFUlJPUiBGYWlsZWQgdG8gaW5mb3JtIFBD
VSBhYm91dCBjZGNsayBjaGFuZ2UgKGVycg0KPiA+ID4gPiA+IC0xMSwNCj4gPiA+ID4gPiBmcmVx
IDMwNzIwMCkNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBXZSBzZWUgZW4gZXJyb3IgYmVjYXVzZSBo
aWdoZXIgbGV2ZWwgYXBpLCBzdGlsbCBub3RpY2VzIHRoYXQgc3RhdHVzIHdhcyB3cm9uZywNCj4g
PiA+ID4gPiBob3dldmVyIHdlIHN0aWxsIGRpZCB0cnkgb25seSBvbmNlLg0KPiA+ID4gPiA+IA0K
PiA+ID4gPiA+IFdlIGZpeCBpdCBieSByZXF1aXJpbmcgX2JvdGhfIHRoZSBzdGF0dXMgdG8gYmUg
MCBhbmQNCj4gPiA+ID4gPiByZXF1ZXN0L3JlcGx5IG1hdGNoIGZvciBzdWNjZXNzKHRydWUpIGFu
ZCBmdW5jdGlvbg0KPiA+ID4gPiA+IHNob3VsZCByZXR1cm4gZmFpbHVyZShmYWxzZSkgaWYgZWl0
aGVyIHN0YXR1cyB0dXJucw0KPiA+ID4gPiA+IG91dCB0byBiZSBFQUdBSU4sIEVCVVNZIG9yIHdo
YXRldmVyIG9yIHJlcGx5L3JlcXVlc3QNCj4gPiA+ID4gPiBtYXNrcyBkbyBub3QgbWF0Y2guDQo+
ID4gPiA+ID4gDQo+ID4gPiA+ID4gU28gbm93IHdlIHNlZSB0aGlzIGluIHRoZSBsb2dzOg0KPiA+
ID4gPiA+IA0KPiA+ID4gPiA+IFsgICAyMi4zMTg2NjddIGk5MTUgMDAwMDowMDowMi4wOiBbZHJt
OmludGVsX2NkY2xrX2R1bXBfY29uZmlnIFtpOTE1XV0gQ2hhbmdpbmcgQ0RDTEsgdG8NCj4gPiA+
ID4gPiAzMDcyMDAga0h6LCBWQ08gNjE0NDAwIGtIeiwgcmVmIDM4NDAwIGtIeiwgYnlwYXNzIDE5
MjAwIGtIeiwgdm9sdGFnZSBsZXZlbCAwDQo+ID4gPiA+ID4gWyAgIDIyLjMxODc4Ml0gaTkxNSAw
MDAwOjAwOjAyLjA6IFtkcm06X19zbmJfcGNvZGVfcncgW2k5MTVdXSBSZXR1cm5pbmcgRUFHQUlO
IHJldHJ5IDENCj4gPiA+ID4gPiBbICAgMjIuMzE4ODQ5XSBpOTE1IDAwMDA6MDA6MDIuMDogW2Ry
bTpfX3NuYl9wY29kZV9ydyBbaTkxNV1dIFJldHVybmluZyBFQUdBSU4gcmV0cnkgMg0KPiA+ID4g
PiA+IFsgICAyMi4zMTkwMDZdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOl9fc25iX3Bjb2RlX3J3
IFtpOTE1XV0gUmV0dXJuaW5nIEVBR0FJTiByZXRyeSAzDQo+ID4gPiA+ID4gWyAgIDIyLjMxOTA5
MV0gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm06X19zbmJfcGNvZGVfcncgW2k5MTVdXSBSZXR1cm5p
bmcgRUFHQUlOIHJldHJ5IDQNCj4gPiA+ID4gPiBbICAgMjIuMzE5MTU4XSBpOTE1IDAwMDA6MDA6
MDIuMDogW2RybTpfX3NuYl9wY29kZV9ydyBbaTkxNV1dIFJldHVybmluZyBFQUdBSU4gcmV0cnkg
NQ0KPiA+ID4gPiA+IFsgICAyMi4zMTkyMjRdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOl9fc25i
X3Bjb2RlX3J3IFtpOTE1XV0gUmV0dXJuaW5nIEVBR0FJTiByZXRyeSA2DQo+ID4gPiA+ID4gDQo+
ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxp
c292c2tpeUBpbnRlbC5jb20+DQo+ID4gPiA+ID4gLS0tDQo+ID4gPiA+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3Bjb2RlLmMgfCAyICstDQo+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY29kZS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcGNvZGUuYw0KPiA+ID4gPiA+IGluZGV4IDM5MWEzNzQ5MmNlNS4u
ZmI2YzQzZThhMDJmIDEwMDY0NA0KPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3Bjb2RlLmMNCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wY29kZS5jDQo+ID4gPiA+ID4gQEAgLTEzNiw3ICsxMzYsNyBAQCBzdGF0aWMgYm9vbCBza2xf
cGNvZGVfdHJ5X3JlcXVlc3Qoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHUzMg0KPiA+
ID4gPiA+IG1ib3gsDQo+ID4gPiA+ID4gIHsNCj4gPiA+ID4gPiAgICAgICAqc3RhdHVzID0gX19z
bmJfcGNvZGVfcncoaTkxNSwgbWJveCwgJnJlcXVlc3QsIE5VTEwsIDUwMCwgMCwgdHJ1ZSk7DQo+
ID4gPiA+ID4gDQo+ID4gPiA+ID4gLSAgICAgcmV0dXJuICpzdGF0dXMgfHwgKChyZXF1ZXN0ICYg
cmVwbHlfbWFzaykgPT0gcmVwbHkpOw0KPiA+ID4gPiA+ICsgICAgIHJldHVybiAoKnN0YXR1cyA9
PSAwKSAmJiAoKHJlcXVlc3QgJiByZXBseV9tYXNrKSA9PSByZXBseSk7DQo+ID4gPiA+IA0KPiA+
ID4gPiBIZXJlIEkgd29uZGVyIHdoZXRoZXIgeW91IG5lZWQgdG8gY2hlY2sgd2hhdCBzb3J0IG9m
IF9fc25iX3Bjb2RlX3J3IHJldHVybiB2YWx1ZXMgbmVlZCB0aGUNCj4gPiA+ID4gcmV0cnkhDQo+
ID4gPiA+IElzbid0IG9ubHkgRVRJTUVET1VUIG5lZWQgdGhlIHJldHJ5PyBPdGhlciByZXR1cm4g
ZXJyb3IgY29kZXMgY2FuIGJlIHByb2JhYmx5IGJlIGlnbm9yZWQNCj4gPiA+ID4gZnJvbQ0KPiA+
ID4gPiByZXRyeT8NCj4gPiA+IA0KPiA+ID4gSGkgVmlub2QhIFRoYW5rcyBmb3IgY29tbWVudHMu
DQo+ID4gPiANCj4gPiA+IFdlbGwgdGhlb3JldGljYWxseSB5ZXMsIGJ1dCBpbiBwcmFjdGljZSBJ
IHRoaW5rIHdlIHdvdWxkIHByZWZlciB0byByZXRyeSBpbiBhbG1vc3QgYWxsIG9mIHRoZQ0KPiA+
ID4gY2FzZXMuDQo+ID4gPiBUaGVyZSBhcmUgYWxzbyBtdWx0aXBsZSBlcnJvciBjb2RlcyB3aGVu
IHlvdSBuZWVkIHRvIHJldHJ5LCBzdWNoIGFzICJFQUdBSU4iLCAiRUJVU1kiIGFuZA0KPiA+ID4g
cHJvYmFibHkNCj4gPiA+IHNvbWUgb3RoZXJzLiBUaGF0cyBpcyBwcm9iYWJseSB3aHkgb3JpZ2lu
YWwgY29kZSBhbHNvIGRvZXNuJ3QgbWFrZSBhIGRpZmZlcmVuY2UuDQo+ID4gDQo+ID4gQWNrDQo+
ID4gDQo+ID4gPiA+IEFuZCBzaG91bGQgdGhlLCAicmV0dXJuIHJldCA/IHJldCA6IHN0YXR1czsi
IGluICJza2xfcGNvZGVfcmVxdWVzdCIgYmUgY2hhbmdlIHRvICJyZXR1cm4gcmV0DQo+ID4gPiA+
ID8NCj4gPiA+ID4gc3RhdHVzIDogcmV0OyIgdG8gcmVmbGVjdCB0aGUgY29ycmVjdCBlcnJvciBj
b2RlIHRvIGNhbGxpbmcgZnVuY3Rpb25zIGFmdGVyIHRoaXMgY2hhbmdlPw0KPiA+ID4gDQo+ID4g
PiBJIHRoaW5rIHRoZSBsb2dpYyBoZXJlIGlzIHN1Y2ggdGhhdCByZXQgdmFsdWUgaXMgc29tZXdo
YXQgbW9yZSBpbXBvcnRhbnQgdGhhbiB0aGUgc3RhdHVzLCBzbw0KPiA+ID4gaWYgcmV0IGlzIHNv
bWV0aGluZyBub3QgemVybyAtIHdlIGFsd2F5cyBwcmVmZXIgcmV0dXJuaW5nIHJldCwgZm9yIHRo
ZSBlbmR1c2VyIHRvIGtub3cgd2hhdA0KPiA+ID4gd2FzIHRoZSByZXQgRVJST1IgY29kZS4NCj4g
PiA+IElmIHJldCBpcyAwLCB0aGVuIHdlIGNhbiAiYWZmb3JkIiB0byBsZXQgdGhlIGVuZHVzZXIg
a25vdywgd2hhdCB3YXMgYWN0dWFsbHkgdGhlIHN0YXR1cy4NCj4gPiA+IA0KPiA+ID4gVG8gbWUg
aXQgYWN0dWFsbHkgc291bmRzIGEgYml0IHdyb25nLCBJIHRoaW5rIHdlIHNob3VsZCBnZXQgc3Rh
dHVzIHBvaW50ZXIsIGxpa2UgIiZzdGF0dXMiDQo+ID4gPiBhbmQgbW9kaWZ5IGl0LCBzbyB0aGF0
IGNhbGxpbmcgc2l0ZSBfYWx3YXlzXyBrbm93cyBib3RoIHN0YXR1cyBhbmQgcmV0LCBtaXhpbmcg
dGhvc2UgdHdvDQo+ID4gPiBpcyBhIGRhbmdlcm91cyBzdHJhdGVneSB3aGljaCBleGFjdGx5IGNh
dXNlZCBzb21lIGNvZGVyIGNvbmZ1c2lvbiBhbmQgcHJvYmFibHkgdGhlIGJ1ZywgdGhhdA0KPiA+
ID4gdGhpcyBwYXRjaCBpcyBmaXhpbmcuDQo+ID4gPiANCj4gPiA+IFN0YW4NCj4gPiANCj4gPiBB
Z3JlZWQsIHRoZSBvcmlnaW5hbCBjb2RlIHdhcyBpbmRlZWQgYml0IGNvbXBsaWNhdGVkIQ0KPiA+
IA0KPiA+IEJ1dCB3aGF0IEkgbWVhbnQgd2FzLCBhZnRlciB5b3VyIHBhdGNoLCAicmV0IiB3aWxs
IGJlIGVpdGhlciAiMCIgb3IgIkVUSU1FRE9VVCIuDQo+ID4gSWYgcmV0ID0gMCwgdGhlbiAic3Rh
dHVzIiB3b3VsZCBoYWQgYmVlbiAwIHRvbyBiYXNlZCBvbiB5b3VyIGNoYW5nZSBpbiB0aGlzIHBh
dGNoLg0KPiA+IElmIHJldCAhPSAwLCB0aGVuICJzdGF0dXMiIG1pZ2h0IGhhdmUgdmFsdWVzIG90
aGVyIHRoYW4gRVRJTUVET1VULg0KPiA+IA0KPiA+IFNvLA0KPiA+ICJyZXR1cm4gcmV0ID8gc3Rh
dHVzIDogcmV0OyIgbWlnaHQgYmUgYmV0dGVyIGluc3RlYWQgb2YgdGhlIG9yaWdpbmFsICJyZXR1
cm4gcmV0ID8gcmV0IDoNCj4gPiBzdGF0dXM7Ig0KPiA+IGVzcGVjaWFsbHkgYWZ0ZXIgeW91ciBw
YXRjaC4NCj4gPiANCj4gPiBBbnl3YXksIG5vdCBzdXJlIGlmIHRoZSBjYWxsaW5nIGZ1bmN0aW9u
cyBjYXJlIGFib3V0IHRoZSByZXR1cm4gdmFsdWUgbXVjaCBvdGhlciB0aGFuIGp1c3QNCj4gPiBs
b2dnaW5nLg0KPiA+IEl0IHdhcyBpbmRlZWQgYSBxdWl0ZSBnb29kIGZpeCENCj4gDQo+IFllcywg
eW91ciBwcm9wb3NhbCBhY3R1YWxseSBtYWtlcyBtb3JlIHNlbnNlIHRoYW4gY3VycmVudCBjb2Rl
IGFueXdheSwgaG93ZXZlciBJJ20gc3RpbGwgdGhpbmtpbmcNCj4gaWYgd2Ugc2hvdWxkIG1heSBi
ZSBwcm9wYWdhdGUgJnN0YXR1cyB0byBjYWxsIHNpdGUgYWx3YXlzLCANCg0KWWVzISBteSBiYWQg
OikgYWN0dWFsbHkgInJldHVybiByZXQgPyBzdGF0dXMgOiByZXQiIGlzIGluZGVlZCAicmV0dXJu
IHN0YXR1cyIhDQoNCg0KPiBuZWVkIHRvIHRoaW5rIGEgYml0Lg0KPiBXb3VsZCBiZSBuaWNlIHRv
IGdldCBWaWxsZSdzIHBlcnNwZWN0aXZlIG9uIHRoaXMuDQo+IA0KPiA+IFJldmlld2QtQnk6IFZp
bm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiANCj4g
VGhhbmtzLA0KPiANCj4gU3Rhbg0KPiANCj4gPiA+ID4gPiAgfQ0KPiA+ID4gPiA+IA0KPiA+ID4g
PiA+ICAvKioNCg==
