Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1FD773A89
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 15:41:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 265CD10E3E1;
	Tue,  8 Aug 2023 13:41:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9D5A10E078
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 13:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691502068; x=1723038068;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=BHv7cvVsbiZOUxmVBZeXl9M95mdWaF/qUrLWnW8nkqA=;
 b=Pd/osghdY66qqfG5KgNug3TRo1uaS9IriB3nOdiYZ7ExAIfNkjTyMCaz
 X60qOgwlOMxnp0T6GCdr5wVCzrJe1dLFXgQ272w0XIBfXOgU+2woo33Xt
 cnOLvgcXOA8C7L2lsoOdYgSozXBen4n5IubwCfM4HqY5ZRaiAK8cC0Ck8
 77uSqUj2zufxv4gFoUxM4dBiLIw5qlHD5UPaW93axqSg2hNKguw/qQxXk
 XKIZPLwibOyz4e8GipTS3GHHH5HdPltX0kpCAEiVrPGYFAmpBZuYN+wuB
 fiV3C74D/Y7WT/jWirstBQFvnGgC5a3lakb082cJ4UUXEkPgJ6LYmwhT/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="374499016"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="374499016"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 06:41:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="796734115"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="796734115"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 08 Aug 2023 06:41:08 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 06:41:07 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 06:41:07 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 8 Aug 2023 06:41:07 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 8 Aug 2023 06:41:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c+PXfefcMI6Hs6MsChsD9wRYI9MgmylsYgTPumGU/2jcIwCl/38vXcxSW/XgJizNczvqne6+xAVtPUd5bkndfrd1M/N/4EM3kIyp1BMIz54Wxy2IkloFVw0Ix9nI1/aFaon5zJR2yijjnwn8++jpDOw2s/syPzVlPYv33kN55wVsChW478gSWwNBv4nFi1mvRkCApk5P2TZSMlDFRrVNpzxP7GJEViJ5b1mlj2EfaVGaGckUVYBt2V0B/KLN3ZujPf5DBCUB1ryGK6Jhyc7Hv0pIslyO1Opk7/C294QhvSmg2fGDuo+4sZnXJzVmsMKEXn5pERbtzzxMp7UpKGoYhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BHv7cvVsbiZOUxmVBZeXl9M95mdWaF/qUrLWnW8nkqA=;
 b=HOTmRqfoayks/PvrtJDVeUBFZeRlwoDzPAT2iDuLetxqhOGJgVik/i4vlZqIXVURmv2LZ/5cNGBGXq75+WcI0DVE63231Tr0h1pEPcNs3MzAJsSNlrGfMEr50b/5On3XlR652EZqAv2AalXgQLO+YLJsEOpunaQFRMTsigQ3kmp2aCcsGWY//R21OJPtC2u92d7zziU8vf8OqaEn1M3QNVzlWg1fKC1F5RT5qFF1hx+MKcxAicNEEVtQoJvBQ8M2E/nFw3ty/jYSaYPuqhhzhVAAcnscStQM1zibAvH3NMU4Bww4h0IUndX3xpKihnWEitCy4nB2kCy5GtG+BlbwoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB6888.namprd11.prod.outlook.com (2603:10b6:303:22d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.25; Tue, 8 Aug
 2023 13:41:03 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e%5]) with mapi id 15.20.6652.026; Tue, 8 Aug 2023
 13:41:03 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Coelho, 
 Luciano" <luciano.coelho@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: pre-initialize some values
 in probe_gmdid_display()
Thread-Index: AQHZlGgRMX9XDw8dIE+rJlEqSTniIa+Tm6eAgAMZcYCAAAUeAIAAIcwAgEn3HwA=
Date: Tue, 8 Aug 2023 13:41:03 +0000
Message-ID: <fb5c325c4d91bb80a6d70807eeca00393044efb0.camel@intel.com>
References: <20230601090338.80284-1-luciano.coelho@intel.com>
 <SN7PR11MB675089A23F9DFA474BF19721E35CA@SN7PR11MB6750.namprd11.prod.outlook.com>
 <cd448c6eed0d0da17ed21f4c25be3ffb20028792.camel@intel.com>
 <SN7PR11MB6750474066287C83A4F87A8DE322A@SN7PR11MB6750.namprd11.prod.outlook.com>
 <bc85ed8c4f6c524b79bbee46d8609ea6ae4a25bf.camel@intel.com>
In-Reply-To: <bc85ed8c4f6c524b79bbee46d8609ea6ae4a25bf.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB6888:EE_
x-ms-office365-filtering-correlation-id: a22648f1-2eff-441a-4124-08db98151c05
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ytf6oj8KemtsTq2o94yYMdoPHeVL6A7UvmkjDOQsWUfVKtm8kzMwuFm0T5uYP1WOpb3Pe3i1WlKeujSXkkAdE08UCdAUiZimIae4hAZrK+6f/fLqvQTybzpPhfR5Rg/uMySSiIRqxrLa1mCoWFyBZZ3L6tjptVmWsNT64fOJSepG8caEDlvDAv6fC9bFz+xg9zprJW6A0rjfJUptFYJEl2lQf+O9DqEMbyKZGum+0KPpX9ZOPnOXh/sTMlJaZYWKiquX9wnGpcL/+5v6TE//ikl9ZU3ViQ0vP7Jqj+D8q3KjJuH5X7hPPLoqePtXZa70IdwA9NHThxUetu+R7HoD5zhvZ8sC2XyuSo5uLrAsmCySTn3OnOFeZJ02Jkrg5RhGPbpuVyE9Npqs2Ww+HsZKEMgJ6B18Y1ZGJEhxyiJIZ91bVTo9kgCMX/BMzdWhzMiIoNqJr0q/2Oh/khPGVY6BmDAQHKw0cRS6nJoRIbn8ZyiAkI7heTKvAAfjAbCbvQVnpGZJ7r51QjWtsX7Sh1cv8OkR6oAMA8OY8PrRCe7YZmngd2q7DVIRCzh+/NS+CYIWJdfCq7O7JHyvBj9t4ooPWq8xlESvaiMMNUe9M031krpuGGWxu32p6qcOXh+OQHOT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(346002)(136003)(39860400002)(396003)(1800799003)(186006)(451199021)(83380400001)(66574015)(2616005)(71200400001)(38100700002)(41300700001)(2906002)(5660300002)(38070700005)(316002)(8676002)(8936002)(66476007)(66946007)(91956017)(66446008)(66556008)(76116006)(64756008)(6512007)(478600001)(86362001)(82960400001)(110136005)(122000001)(6486002)(6636002)(6506007)(36756003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ckhWeG41VGd4U0oxd3k4M05EY1FMVkhhenRKcmpKTnpNTGlDUjRtVStjVmt2?=
 =?utf-8?B?bVRxc1BQZlpaN2djTWJkVDhKdmZiRXpOblVEenNyNG4xZkRhb3A1end2cmR3?=
 =?utf-8?B?WmEvc3M0UGRDT293R1c3NklyaHdNaDcvV3d3Ti9WNUhIemtlR3NKYS9idDVV?=
 =?utf-8?B?dnFOZ3ZrUlQrQW9HMnptbkNKV0w2TldiWVNBMHdpdFRVSk9yQVBlQUdnRitO?=
 =?utf-8?B?SkpUcEVUR1RXYXM3NWl3aVFKaTZwSjZneU1ETldxTXhKUXlxdHNqYklRS01U?=
 =?utf-8?B?QmE4TVB0cDBUZXNDQTBISG1xWCsrRXVwMXJTUjVMOHlHVHNYTDBVV1d1c1Q1?=
 =?utf-8?B?UFc4QzRYY2xPOWxuVmVLYVd4SCt2WjR4d0ZRa0diZlNEZU5jVDFZYnFDdDZn?=
 =?utf-8?B?NGhoVDJJMWIzRVRzNVBORHlqT0lLdTlMQkdRazBuR3lsRmYySzQzUkxHQUlP?=
 =?utf-8?B?Q3Z6dXorU0tGOG5VUmVUWXFLbU1wWTlGZkh1bTV4cllmWU1iWGlZVnR5MFpW?=
 =?utf-8?B?WkZUNTU0OElhYU5CSnRQQXR2ZXpqdWxsOHczemVzN3Z6eXpDbk1hMWxRdlRD?=
 =?utf-8?B?M29oTHhUeFRVdXA1azUzdlBHVFoxa3Mxc1BjdlVhZkgxeWppcVJWa1JwZEVB?=
 =?utf-8?B?akl1MlE4a3pxcVE4OW1hZG01SXNWalY4MEp5U2ZiYmd5S3c3dFZhU3ZxRUVu?=
 =?utf-8?B?ZjhRblhBNnNlOUNRSGxyUTRuN0kyakkwNTBXSWJrekVjOTMyaDdsRzQwSTAz?=
 =?utf-8?B?NnB2UGRSSXBSUkhyZ096dHlKQlFlYjZjYVdLZEpIbGRFUVBEVEN4NDZqNkNN?=
 =?utf-8?B?R3ZMSFRVL3NFdVpFZzR3d1lucG5WcU14cEFpeTFlcjhMSmtOYUJidTFtYnRP?=
 =?utf-8?B?bS9XL0d5MEdEY1NyUk5hRUFaMnRMNFdQSTN0VkhnVmliaittdTJNcldRVU94?=
 =?utf-8?B?TS9EU1MyNU9ndEVKUGppL21ONG5HOStQb1Z4akJvV3o5RFZOZFdhdXNocUJp?=
 =?utf-8?B?ZGVGRXc5bkxJRkxHc2hHVnluL1o2cnNCN3k2RWhXbUJodEJ1K3k0ekpka3Yr?=
 =?utf-8?B?RHY3bkMxYWIwbzY4Z0hFLzZRTEFaWndOMXpkblhvT09RYkU0QmwxdU9Nc245?=
 =?utf-8?B?dUxMc3JpVnFHYjlVSXlPZUJrb1YzY2F2b2xZRHBxRjhaZ0RFLzczOVYycndz?=
 =?utf-8?B?U1RrNERkc0pOVEE4cC91ZjZaS2E1Y3pnWWR2QlJPNFpJV0luTkZmd05tUy93?=
 =?utf-8?B?cWxsdFFVMVQvVGpSa0JucnNDSlh1RjU5SGcyRUhhQmdTMHFVSCt2a0IrUG54?=
 =?utf-8?B?MzYrbWlxOHRIWTFldnVIcWlMYU55VmVVQW5iQU9iS3BIL0NYZ24rbFpScW1m?=
 =?utf-8?B?TXBsRmM4N3JDZWFlNU4vMGZqb1ZORnJ6TDBlaUk0SjVXTTdaWkFTTGNwYktW?=
 =?utf-8?B?aVJZN2pJY2wvcHl5YzFzMWRTWUo4THM0T1lCbTFJOFpqY0liT3g4RXh2ejhs?=
 =?utf-8?B?NXVlVTZXWSt0cmRtSnlzVmpNK01lZ1k5ZnhURHJsa3g5SldQYmlMbURYMVND?=
 =?utf-8?B?VHlTYlJuaThMcW5QSHhQN2U4TXMzWGJCVEw2SEt3RFgvZ2p1eXNTOU5rbXJ0?=
 =?utf-8?B?OS9xZDRSckI2OWFRQVE5VUJPd29VdW9BekJlYXZmbGwxakM0OU9tb3dXSFlX?=
 =?utf-8?B?OVpWamVWekFWWEFKUFVodWJ1UVRVNFNmY3QwNHk0YVJDWGl5SWdyd3VvZ1k5?=
 =?utf-8?B?SUxyZGRLT3g4Z3AxTytrQmRWb2tXOWlBY2N3ZFNlcVM3NEdueWFMclJIQ2FR?=
 =?utf-8?B?KzEvT08wK2QzU3VjcEtzSFJESzY2MXRTOHdvMEpPQ0JDcnpZeUFUWmk5YlpZ?=
 =?utf-8?B?clVXckprZTcxRzlEZkNJT1hPTElzU0E1cFZrMGl2TTlreFY3WE9SYXZYakJO?=
 =?utf-8?B?dktJL2tQOHdTcnhlK2I4cTNSS3dnTFBxcDI5Tml0SXRCeHRmY0pzb2UzZ1ZD?=
 =?utf-8?B?SVkrMmhVMkU2alR6cUxkL0psTkRPTDBhcHZnN0NyZ3RxMlR6TG5Dd0pLMzQy?=
 =?utf-8?B?dUYwRm04V1dTcUM2UlJRejRGaXdOamVPOTBldXA0eWJLWkY4SHpxb0tIQWJq?=
 =?utf-8?B?UzYrME4rTW1CWEhEb0xnOW5JK0VOTjJWRDRETWZySWduRWR0cHlMNGZ0cUF0?=
 =?utf-8?B?bkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <196AD92925A3D549AFA763A1FF3E1243@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a22648f1-2eff-441a-4124-08db98151c05
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2023 13:41:03.4755 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JYsp2Q+IuHmJCeUkZg/sVGtgTJBvg9orbmVXEjWP0x0OFTnud80nVJik6qtU69a82uYgqjaOjuJAJ1epFfnA3VesMn1Azxj/YA/d3ouR4B4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6888
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: pre-initialize some
 values in probe_gmdid_display()
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

T24gVGh1LCAyMDIzLTA2LTIyIGF0IDEyOjA5ICswMDAwLCBDb2VsaG8sIEx1Y2lhbm8gd3JvdGU6
DQo+IE9uIFRodSwgMjAyMy0wNi0yMiBhdCAxMDowOCArMDAwMCwgS2FuZHBhbCwgU3VyYWogd3Jv
dGU6DQo+ID4gPiBPbiBUdWUsIDIwMjMtMDYtMjAgYXQgMTA6MzAgKzAwMDAsIEthbmRwYWwsIFN1
cmFqIHdyb3RlOg0KPiA+ID4gPiA+IFdoZW4gaW50ZWxfZGlzcGxheV9kZXZpY2VfcHJvYmUoKSAo
YW5kLCBzdWJzZXF1ZW50bHksDQo+ID4gPiA+ID4gcHJvYmVfZ21kaWRfZGlzcGxheSgpKSByZXR1
cm5zLCB0aGUgY2FsbGVyIGV4cGVjdHMgdmVyLCByZWwNCj4gPiA+ID4gPiBhbmQNCj4gPiA+ID4g
PiBzdGVwDQo+ID4gPiA+ID4gdG8gYmUgaW5pdGlhbGl6ZWQuwqAgU2luY2UgdGhlcmUncyBubyB3
YXkgdG8gY2hlY2sgdGhhdCB0aGVyZQ0KPiA+ID4gPiA+IHdhcyBhDQo+ID4gPiA+ID4gZmFpbHVy
ZSBhbmQgbm9fZGlzcGxheSB3YXMgcmV0dXJuZWQgd2l0aG91dCBzb21lIGZ1cnRoZXINCj4gPiA+
ID4gPiByZWZhY3RvcmluZywgcHJlLSBpbml0aWxpYXplIGFsbCB0aGVzZSB2YWx1ZXMgdG8gemVy
byB0byBrZWVwDQo+ID4gPiA+ID4gaXQNCj4gPiA+ID4gPiBzaW1wbGUgYW5kIHNhZmUuDQo+ID4g
PiA+ID4gDQo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogTHVjYSBDb2VsaG8gPGx1Y2lhbm8uY29l
bGhvQGludGVsLmNvbT4NCj4gPiA+ID4gDQo+ID4gPiA+IExvb2tzIG9rYXkgdG8gbWUganVzdCBh
IHNtYWxsIHN1Z2dlc3Rpb24vcXVlc3Rpb24gYmVsb3cuDQo+ID4gPiA+IA0KPiA+ID4gPiA+IC0t
LQ0KPiA+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X2RldmljZS5jIHwgOQ0KPiA+ID4gPiA+ICsrKysrKysrKw0KPiA+ID4gPiA+IMKgMSBmaWxlIGNo
YW5nZWQsIDkgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IGRpZmYgLS1naXQN
Cj4gPiA+ID4gPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9k
ZXZpY2UuYw0KPiA+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X2RldmljZS5jDQo+ID4gPiA+ID4gaW5kZXggNDY0ZGYxNzY0YTg2Li5mYjYzNTRlOWU3
MDQgMTAwNjQ0DQo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X2RldmljZS5jDQo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jDQo+ID4gPiA+ID4gQEAgLTczMSw2ICs3
MzEsMTUgQEAgcHJvYmVfZ21kaWRfZGlzcGxheShzdHJ1Y3QNCj4gPiA+ID4gPiBkcm1faTkxNV9w
cml2YXRlDQo+ID4gPiA+ID4gKmk5MTUsIHUxNiAqdmVyLCB1MTYgKnJlbCwgdTE2ICpzdGVwDQo+
ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHUzMiB2YWw7DQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoGludCBpOw0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoC8qIFRoZSBj
YWxsZXIgZXhwZWN0cyB0byB2ZXIsIHJlbCBhbmQgc3RlcCB0byBiZQ0KPiA+ID4gPiA+IGluaXRp
YWxpemVkDQo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgICogaGVyZSwgYW5kIHRoZXJlJ3Mgbm8g
Z29vZCB3YXkgdG8gY2hlY2sgd2hlbiB0aGVyZQ0KPiA+ID4gPiA+IHdhcyBhDQo+ID4gPiA+ID4g
K8KgwqDCoMKgwqDCoMKgICogZmFpbHVyZSBhbmQgbm9fZGlzcGxheSB3YXMgcmV0dXJuZWQuwqAg
U28NCj4gPiA+ID4gPiBpbml0aWFsaXplDQo+ID4gPiA+ID4gYWxsDQo+ID4gPiA+ID4gdGhlc2UN
Cj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqAgKiB2YWx1ZXMgaGVyZSB6ZXJvLCB0byBiZSBzdXJl
Lg0KPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoCAqLw0KPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDC
oCp2ZXIgPSAwOw0KPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoCpyZWwgPSAwOw0KPiA+ID4gPiA+
ICvCoMKgwqDCoMKgwqDCoCpzdGVwID0gMDsNCj4gPiA+ID4gPiArDQo+ID4gPiA+IA0KPiA+ID4g
PiBGcm9tIHdoYXQgSSBjYW4gc2VlIHRoaXMgaXMgb25seSBjYWxsZWQgZnJvbQ0KPiA+ID4gPiBp
bnRlbF9kaXNwbGF5X2RldmljZV9wcm9iZSgpIHdoaWNoIGlzIGluIHR1cm4gY2FsbGVkIGZyb20N
Cj4gPiA+ID4gaW50ZWxfZGV2aWNlX2luZm9fZHJpdmVyX2NyZWF0ZSgpIHdoZXJlIHRoZSBhYm92
ZSB2YXJpYWJsZXMgYXJlDQo+ID4gPiA+IGRlZmluZWQgbWF5YmUgd2UgaW5pdGlhbGl6ZSB0aGVz
ZSB2YWx1ZXMgdGhlcmUgaXRzZWxmLg0KPiA+ID4gDQo+ID4gPiBUaGFua3MgZm9yIHRoZSByZXZp
ZXchDQo+ID4gPiANCj4gPiA+IEkgdGhvdWdodCBhYm91dCBpbml0aWFsaXppbmcgdGhlIHZhcmlh
YmxlcyBvbiB0aGUgY2FsbGVyIHNpZGUsDQo+ID4gPiBidXQNCj4gPiA+IHJlY2tvbmVkIHRoYXQN
Cj4gPiA+IGl0IHdvdWxkIGJlIG1vcmUgaW50dWl0aXZlIHRvIGluaXRpYWxpemUgdGhlbSBpbiB0
aGUNCj4gPiA+IHByb2JlX2dtZGlkX2Rpc3BsYXkoKSBmdW5jdGlvbiBpbnN0ZWFkLCBiZWNhdXNl
IHRoZSBjYWxsZXINCj4gPiA+IGV4cGVjdHMNCj4gPiA+IHRob3NlDQo+ID4gPiB2YWx1ZXMgdG8g
YmUgc2V0IGluIHN1Y2Nlc3NmdWwgY2FzZXMgYW5kIHRoZXJlJ3Mgbm8gd2F5IGZvciBpdCB0bw0K
PiA+ID4ga25vdyB3aGV0aGVyDQo+ID4gPiB0aGVyZSB3YXMgYSBmYWlsdXJlIG9yIG5vdCAoYmVj
YXVzZSB3ZSByZXR1cm4gYSBwb2ludGVyIHRvIGxvY2FsDQo+ID4gPiBub19kaXNwbGF5DQo+ID4g
PiBzdHJ1Y3R1cmUgdGhhdCB0aGUgY2FsbGVyIGRvZXNuJ3Qga25vdyBhYm91dCkuDQo+ID4gPiAN
Cj4gPiA+IE9idmlvdXNseSB3aXRoIHRoZSBjdXJyZW50IGNvZGUgaW4gdGhlIGNhbGxlciwgdGhh
dCBkb2Vzbid0IG1ha2UNCj4gPiA+IG11Y2gNCj4gPiA+IGRpZmZlcmVuY2UsIGJ1dCBJIHRob3Vn
aHQgaXQgd2FzIGNsZWFuZXIgYXMgSSBkaWQuDQo+ID4gPiANCj4gPiA+IEJ1dCBJJ20gb2theSB0
byBjaGFuZ2UgaXQgYW5kIGluaXRpYWxpemUgdGhlbSBhdCB0aGUgY2FsbGVyLCBzbw0KPiA+ID4g
anVzdCBsZXQgbWUga25vdw0KPiA+ID4gaWYgeW91IHdhbnQgdGhhdC4NCj4gPiANCj4gPiBJIGRv
buKAmXQgdGhpbmsgaXQgbmVlZHMgdG8gYmUgY2hhbmdlZCB0aGVuIGFuZCB0aGUgZXhwbGFuYXRp
b24gbG9va3MNCj4gPiByZWFzb25hYmxlLg0KPiA+IFNvIHRoaXMgTEdUTQ0KPiA+IA0KPiA+IFJl
dmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPiAN
Cj4gDQo+IFRoYW5rcywgU3VyYWohIENhbiBzb21lb25lIG1lcmdlIHRoaXMgZm9yIG1lLCBwbGVh
c2U/DQoNClRoaXMgaXMgbm93IG1lcmdlZC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KPiAN
Cj4gLS0NCj4gQ2hlZXJzLA0KPiBMdWNhLg0KDQo=
