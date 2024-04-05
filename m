Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 499D5899E9B
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 15:43:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABE76113C10;
	Fri,  5 Apr 2024 13:42:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AVyShcpG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DDE0113C18
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712324577; x=1743860577;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0C9rLqGe00fVrlyELor+5i480bLZJrWDUz+6C36K7bg=;
 b=AVyShcpGiojKfCZbpQHn/beHHJLKHGkKgEvo7FcBf7JjIy9B77Wau7wU
 96fxCkMEt4kC4i+th/z9vRbwZ0uHq2cDZ5Tund3l+HPQEz2rDCv62s0nr
 WRW5ItdfjQug64O7No7579HG8qWvuAKw7t5K1bbYuL1DXdv924fzRdjhz
 YoKSU0cHkYS3TaGcpnE8F0MxfJAxXTVdMs2BSGsu9gr1xOrvJx+KGD4Cb
 aMEkB4jtTupslXf2N50rPF6NFJ5fepA4K5UMLEOCHogQ6o9QLTPSu0DqW
 3K1A+sEszVxsnLmy1BErlmEp5h4GzM0xVflMS+bnR0VwXR3yE0bnqCIqR Q==;
X-CSE-ConnectionGUID: km5etzcIRba7mwkCMz6oSg==
X-CSE-MsgGUID: 0AS2AHixSuOxwb5JBl1xoA==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="7515061"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7515061"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 06:42:53 -0700
X-CSE-ConnectionGUID: E6qQfy80RtmIME6r8CrZOA==
X-CSE-MsgGUID: PTm+ThsYST+LQZNJ2FglJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="56642521"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Apr 2024 06:42:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 06:42:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 06:42:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Apr 2024 06:42:52 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Apr 2024 06:42:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G1m8DIN03ny7i7kw+7IiLy21JXDf+mB859xq4TS2anSeRFEmSq+a1mOV4QqlbzbTwpUfDsSyNzVQzgVCuU2m1no8gdhlU6ADCFLi5OAPBi/Lr5rKxAjiKD7XvCrVKV33fNLzOqNYI7loCysyV1NPlCr3A21svVJRD8lEt3hMEsVfCK2zEIPW2sX6zZ8PSk4kuNVamvu5nxeOOfx8JZZAs2nj8Adk9qgml1YFdI/WM7kk6ZXPpxlSRViIqBZqaCT7o2Kd26yNrGveyAdQqshS8dQOwKK6YUYTr2DZ4qszKQ5E8F7NAOQjS0IE6orcPH7WjEugxQFtMXiczx21j55tVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0C9rLqGe00fVrlyELor+5i480bLZJrWDUz+6C36K7bg=;
 b=d8R3GcNgg2upUxi9aef3RxBVmOYi2stJS7Xf+Zpd9p2JHfZ0tpByctQpLHTIBd9VAT87Qf5M0F+cxWis1BMT5prHItS2JzfdhpK97FqVXTmHYHvVRez1HGT02sd5TVOsaRwz4qZfd2bHYlt54Eapn36bb+TlXZwrYaFpZ8kwuPCfwnNmUZhEkYuNOKuuDETbM2HwkzkpXZPPZ+L4rN6atS1HlfIXXbD1mvFqYOE/Nmse3YtLERIXugLKy/CcRtq0Ehx4XDTWrNHweYwgc6nktFbF0vzEo/iWIbR7DQuOawNVODhQ3oHfty00JTjZ7FD14PvecdEOSOBX28dHqrwGYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by BL1PR11MB5271.namprd11.prod.outlook.com (2603:10b6:208:31a::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Fri, 5 Apr
 2024 13:42:49 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016%6]) with mapi id 15.20.7452.019; Fri, 5 Apr 2024
 13:42:49 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 01/17] drm/i915: Update pipes in reverse order for
 bigjoiner
Thread-Topic: [PATCH v2 01/17] drm/i915: Update pipes in reverse order for
 bigjoiner
Thread-Index: AQHahtgAgKNUzKwxV06JIlLctx1hErFZry5A
Date: Fri, 5 Apr 2024 13:42:49 +0000
Message-ID: <SJ0PR11MB678987E66265BC27DDB3D0EB8D032@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
 <20240404213441.17637-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20240404213441.17637-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|BL1PR11MB5271:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9TP3TL+i0mO9+HuZN5Ulyyyh1mR6sFWjhsiB2RW0CFdQdKLtBuggh31DLfPZ3xveeYtJVTmxq61a7HSGt4MfDVofzTJpx9C6o6n+ix+g5+iEC+I0Oje3xomD8Z64H90QlXbhk+vzlKTp5aZ+GvmKk0M5BWvhmv/S9zxYbUkbDIj23SAyMlNx2rsmhJe4ePwe5eVMPtzzHfCiy9FjPOQPxdvywnXZSy6syHb28/JVVpY+0kNjMXe1cHKaYQgYWuQidDYkSmuzQeqSsiuXFA4ULroNs25NR+uEO/rMQry2Ndm7ZfGLCXauUaDKiqYj6M87JvaDUnzSbTJ1CowngbOWnmiqRQ/rOlGxnsYzDmG1+ZWWSlf82FOZSY1qwhIlEagybvmMI2/oOBkxoMeshiyKWQ9Ov9AaR2GDS6ZWgOmQij5kgk5rn+IZGLoubX50e+lbL1imCv70FRaZVLQnyocDFfLocZxggfepcerk+KaFV2UtAxAwOHjb5BXRWO0EAMG/IujT2//88/CUO4mpRfYP+P/k8YRRPk6rcgEVBXROncaRzulKli5qS4iVASKkDz8vSm8W5wc3h1cbZGo/mjct0jaSV3KpTu9YcaV+iqL8r4p6wa2fZurk/ylJ6Km9u/huLwwC9XBgxMlFwKpWlkIjpPFMjuD/hXp5i+u/QWGrXxs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dDdxK3MrUnFrTWJZOTJGSzlZL1lOVkFFYVo2L2c2aXBsSllFRjBFQzhsSDNQ?=
 =?utf-8?B?NXNzbTZEN2RWSnV0NFlDQjV3QnVKZXJzeHNFbjBmRTRiNjgybXR2bWtaYUUv?=
 =?utf-8?B?Z28wUVBLUE95aHNnd00vUWRCNGVMczBMaWtBRUNRRmJyOVIxUGh2eW9EdGFG?=
 =?utf-8?B?VnAyT1JEWFhkNE1PeCtOcWxKajZzeGZZVGJtTGQyRnZuZVJtQUVGVGZBemJG?=
 =?utf-8?B?U2ZSNGUvUittVEpiT0ZScSt2ZkExam1nOW1KUGVxZHVRck9JTm9wSFhJNEJE?=
 =?utf-8?B?WmNtVVJHa3dUVE1oNnZremJlb0c0V2JXMitoZUVWeFRRNGgxRkY2NzdlRkxu?=
 =?utf-8?B?VmQ3cjRvbEN0MlUzd1E4VkZQRzV6b0o1eUp5SVl4TVRrT0RjK3QxR3JHRmZ5?=
 =?utf-8?B?VTdwQW1EUjFCSENLbHM2R05CWmgrMGpobDhMTWowUTdHTHM3eFlPVzd2UEpO?=
 =?utf-8?B?T3EzWW0rQnl0ZWxVcU5BVmFZak5WdzUrUkkzS2FDaUVnZWFEWU1DNU1WMyti?=
 =?utf-8?B?OUNBWk9yQUh0RmhpZ29KSmlhN2NLM3BwWlpQUEthelFxYkhqWUF5aU0xaXRi?=
 =?utf-8?B?THBXazRhUzcvbVM3eTB0dStjQUxDS2c2ZEpqSU5Ra0dRSnhSM1RLM1MvRkxB?=
 =?utf-8?B?MmVCSWhGMk1tSDBxS3hSdlYrQVdzcWhROXlSSjdjVlYzVUtqN0MvdFlzUnBD?=
 =?utf-8?B?RmQ0U29WMWptVlAvUi90NzJZTElpQzdhV1VHbkFhWDZBWnU0Sy9IVnpTRFZo?=
 =?utf-8?B?L2lDZG1FSHZBdVQ1Uk9BYmxCeThudENSQmhOTlZBdjdtUllyeXZUMjR1OUNN?=
 =?utf-8?B?ODA2T21sU3d0d2JNaFp1L3p5RndydzhjNjdvTkE5YWdyWWw1YjFyTVdDaHN6?=
 =?utf-8?B?cVhiK2NPekFLa1dTSUlCanRodTF5SmMzaS9oYTBWSnhhRTlDUzZZaU9iUFV0?=
 =?utf-8?B?Nkt5Sy9iclg3SjFJL1lCOUxnYUJXUlFpZENqdUdlTTNQUlEwa2p1cDFEaWM3?=
 =?utf-8?B?dXZsWWZaRjAwTU9MVFZIaktYcWlVL2loRWkyV2xhOHFaRE0vS29jWEZrdDE3?=
 =?utf-8?B?clp0OCtYTEJFQUtWOE9pYWUvTDJFYTJBMEJRMVgySHlUV1FzKzFKaWVCNjM5?=
 =?utf-8?B?ZjJUWENyQXVmT1dEZHloTXFFU3VGV0k0T2M3cTNsdDN1ZHNKWDBHeElqeTVx?=
 =?utf-8?B?amNLeTV4N2x4QWlzRlo0QkEreWhpczl0anp1TWNpeXZwbUVqUURWVmoxZzQ5?=
 =?utf-8?B?UU4wYzN0ejNtVmZ5dmswSjFsaGhDRnNPd25KbGpUL3paTkp3UlBJNllRS3p4?=
 =?utf-8?B?dkVSNHhxMExUUzNaZ3dtNlU0S1VuNGNVQmtvaHRyRzA3VmR0NFZOdGJpWnF4?=
 =?utf-8?B?bEwwenRKWTlHeU9uMVBHNVgySnFpc1h1QWJRR1BPZUZoNWYvVDRhVG1QdWtX?=
 =?utf-8?B?OWVFTHhZWUsrMkM2ZUh6Y1BSU0lpcGpzb2xzQnl0bDBrUkZpSGMrN0RnVE1Y?=
 =?utf-8?B?cDVvclYrOGZlZm9henBsUG5oNklyYklac2E2RGF6emMxbUFFWGU1QVJjeGVU?=
 =?utf-8?B?b0lRS1ZZbEp4WUExS01EV0lDSVVnOC9COXc5ZzZVd1I2eXovU3Q5OHJUZXBT?=
 =?utf-8?B?Qkx4blZJSFJnZWgvWTJhd0xFRm9WdzkyMUFpNVlTdVJwSkp6YUtyU2hGcFR0?=
 =?utf-8?B?Skxva0hxZDFWRGc4ZTZuWmdqc1pCU01Ga0hUeGVPTnBCK3oxNmV1T3FmOG8w?=
 =?utf-8?B?aUliS0Y0Snh0Z3lkbEk3UFJIOUtSaWVtd1pOUFd1Si9uMkRCUDJkaDBIVndV?=
 =?utf-8?B?TjRTV0M1NzBuSFZzN24wdkt0UkRZYVpmcytOWGc2bTZnRHlWbjBieVdWTHZO?=
 =?utf-8?B?MnRveStGNkVyQTExYnNSSkVZbHJ6WUgvSEs4bGt5ajdzblhRVXFGa1V2ME1q?=
 =?utf-8?B?YzdwUUhiSzh2OHBWZFlZY2FoM1pmanVXa24rSVVVYWNPMHpDQmxEbXNFZFZs?=
 =?utf-8?B?RUZ1NXJkbEZGMDdUMTh2RGdINzdsR3doY1QvM2ZFVmxZZXovelJCRmhEMWJw?=
 =?utf-8?B?WTdtaWlpbGtTMEhnMy8yd0QyZm5qTlo4eTQwaUozclpMWlQxenRIQklEOGpx?=
 =?utf-8?B?VVZlTVNpd2poRjFqdFFSL1lMYStqNVEvbU91d0FTMEloNXNwV3VYWHh4SG5S?=
 =?utf-8?B?M1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2714a0b-a82f-467a-f552-08dc557648b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2024 13:42:49.3320 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yXqcEvV0H4S1qYHpBa+nDq6SIg1AOHhQmMY4hRZ2mEwBBjX23eR3R4kekc0fZAdCcSWW9nnvdOLHNAk1052it2EwcPzFggAAtbtR1lLXgaA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5271
X-OriginatorOrg: intel.com
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
cmphbGENCj4gU2VudDogRnJpZGF5LCBBcHJpbCA1LCAyMDI0IDM6MDQgQU0NCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIHYyIDAxLzE3XSBk
cm0vaTkxNTogVXBkYXRlIHBpcGVzIGluIHJldmVyc2Ugb3JkZXIgZm9yDQo+IGJpZ2pvaW5lcg0K
PiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gDQo+IFdpdGggYmlnam9pbmVyIHRoZSBtYXN0ZXIgY3J0YyBpcyB0aGUgb25lIHRoYXQg
d2lsbCBzZW5kIG91dCB0aGUgdWFwaQ0KPiBldmVudC9ldGMuIFdlIHdhbnQgdGhhdCB0byBoYXBw
ZW4gYWZ0ZXIgYWxsIHRoZSBzbGF2ZXMgYXJlIGRvbmUsIHNvIGxldCdzIHRyeQ0KPiB0byBkbyB0
aGUgY29tbWl0cyBpbiByZXZlcnNlIG9yZGVyIHNvIHRoYXQgdGhlIG1hc3RlciBjb21lcyBsYXN0
Lg0KPiANCj4gRXZlbiB3b3JzZSwgdGhlIG1vZGVzZXQgaGVscGVyIHdpbGwgc2ltcGx5IGNvbXBs
ZXRlIHRoZSBjb21taXQgb24gdGhlDQo+IHNsYXZlIHBpcGUgaW1tZWRpYXRlbHkgYXMgaXQgY29u
c2lkZXIgdGhlIGNydGMgdG8gYmUgaW5hY3RpdmUgKGl0IGNhbid0IHNlZSBvdXINCj4gY3J0Y19z
dGF0ZS0+aHcuYWN0aXZlL2V0Yy4pLg0KPiANCj4gV2l0aCByZWd1bGFyIHN5bmMgdXBkYXRlcyB0
aGlzIGdlbmVyYWxseSBkb2Vzbid0IG1hdHRlciBhbGwgdGhhdCBtdWNoIGFzIHRoZQ0KPiBzbGF2
ZSBwaXBlIHNob3VsZCB0eXBpY2FsbHkgZmluaXNoIGl0cyB3b3JrIGR1cmluZyB0aGUgc2FtZSBm
cmFtZSBhcyB0aGUNCj4gbWFzdGVyIHBpcGUuIEhvd2V2ZXIgaW4gY2FzZSB0aGUgc2xhdmUgcGlw
ZSdzIGNvbW1pdCBzbGlwcyBpbnRvIHRoZSBuZXh0DQo+IGZyYW1lIHdlIGVuZCB1cCBpbiBhIGJp
dCBvZiB0cm91YmxlLiBUaGlzIGlzIG1vc3QgdmlzaWJsZSB3aXRoIGVpdGhlciBhc3luYyBmbGlw
cw0KPiAoY3VycmVudGx5IGRpc2FibGVkIHdpdGggYmlnam9pbmVyIGV4YWN0bHkgZm9yIHRoaXMg
cmVhc29uKSwgYW5kIERTQiBnYW1tYQ0KPiB1cGRhdGVzLiBXaXRoIERTQiB0aGUgcHJvYmxlbSBo
YXBwZW5zIGJlY2F1c2UgdGhlIERTQiBpdHNlbGYgd2lsbCB3YWl0IHVudGlsDQo+IHRoZSBuZXh0
IHN0YXJ0IHZibGFuayBiZWZvcmUgc3RhcnRpbmcgdG8gZXhlY3V0ZS4gU28gaWYgdGhlIG1hc3Rl
ciBwaXBlIGFscmVhZHkNCj4gZmluaXNoZWQgaXRzIGNvbW1pdCBhbmQgdGhlIERTQiBvbiB0aGUg
c2xhdmUgcGlwZSBpcyBzdGlsbCB3YWl0aW5nIGZvciB0aGUgbmV4dA0KPiB2Ymxhbmsgd2Ugd2ls
bCBhc3N1bWUgdGhlIERTQiBhcyBnb3R0ZW4gc3R1Y2sgYW5kIHRlcm1pbmF0ZSBpdC4NCj4gDQo+
IFJldmVyc2luZyB0aGUgY29tbWl0IG9yZGVyIHNob3VsZCBhbWVsaWFyYXRlIHRoaXMgZm9yIHRo
ZSBtb3N0IHBhcnQgYXMgdGhlDQo+IG1hc3RlciBwaXBlIGlzIGd1YXJhbnRlZWQgdG8gc3RhcnQg
aXRzIGNvbW1pdCBhZnRlciB0aGUgc2xhdmUgcGlwZSBzdGFydGVkLiBUaGUNCj4gb25lIHRoaW5n
IHRoYXQgY2FuIHN0aWxsIHNjcmV3IHVzIG92ZXIgaXMgdGhlIGZhY3QgdGhhdCB3ZSBhcmVuJ3Qg
bmVjZXNzYXJpbHkNCj4gZ29pbmcgdG8gY29tbWl0IHRoZSBwaXBlcyBpbiB0aGUgcmV2ZXJzZSBv
cmRlciBhcyB0aGUgYWN0dWFsIG9yZGVyIGlzIGRpY3RhdGVkDQo+IGJ5IHRoZSBEREIgb3Zlcmxh
cCBhdm9pZGFuY2UuDQo+IEJ1dCB0aGF0IGNhbiBvbmx5IGhhcHBlbiB3aGlsZSBvdGhlciBwaXBl
cyBhcmUgYmVpbmcgZW5hYmxlZC9kaXNhYmxlZCwgYW5kDQo+IHNvIGluIHRoZSBub3JtYWwgc3Rl
YWR5IHN0YXRlIHdlIHNob3VsZCBiZSBzYWZlLg0KPiANCj4gVGhlIGZ1bGwgZml4IHdpbGwgaW52
b2x2ZSBtYWtpbmcgdGhlIGNvbW1pdCBtYWNoaW5lcnkgYXdhcmUgb2YgdGhlIHNsYXZlDQo+IHBp
cGVzIGFuZCBub3QgZmluaXNoIHRoZWlyIGNvbW1pdHMgcHJlbWF0dXJlbHkuIEJ1dCB0aGF0IHdp
bGwgaW52b2x2ZSBhIGJpdA0KPiBtb3JlIHdvcmsgdGhhbiB0aGlzLiBBbmQgdGhpcyBjb21taXQg
b3JkZXIgcmV2ZXJzYWwgd2lsbCBzdGlsbCBiZSBiZW5lZmljaWFsIHRvDQo+IGF2b2lkIHVzZXJz
cGFjZSBnZXR0aW5nIGFuIC1FQlVTWSBmcm9tIHRoZSBmb2xsb3dpbmcgcGFnZSBmbGlwIGlmIHRo
ZSBzZWNvbmQNCj4gcGlwZSdzIGNvbW1pdCBkb2VzIHN0cmV0Y2ggaW50byB0aGUgbmV4dCBmcmFt
ZS4NCj4gDQoNCkxHVE0uDQpSZXZpZXdlZC1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5r
dWxrYXJuaUBpbnRlbC5jb20+DQoNCkkgaGFkIGp1c3Qgb25lIHF1ZXJ5IHRob3VnaCwNCldpbGwg
dGhlcmUgYmUgYSBjYXNlIHdoZXJlIHdlIGNhbiBnZXQgdmJsYW5rIGJldHdlZW4gc2xhdmUgdXBk
YXRlIGFuZCBtYXN0ZXIgdXBkYXRlLA0KaWYgc28gZG8geW91IHRoaW5rIHRoZXJlIHdpbGwgYmUg
YW55IHByb2JsZW0gZHVlIHRvIHRoYXQ/DQoNClRoYW5rcywNClZhbmRpdGENCg0KPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwg
MTQgKysrKysrKysrKystLS0NCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmggfCAgOCArKysrKysrKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggYTQ4MWM5MjE4MTM4Li4wMDg2YTc0MjJlODYg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+IEBAIC02OTU2LDggKzY5NTYsMTIgQEAgc3RhdGljIHZvaWQgc2tsX2NvbW1pdF9tb2Rlc2V0
X2VuYWJsZXMoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ICAJaW50ZWxf
ZGJ1Zl9tYnVzX3ByZV9kZGJfdXBkYXRlKHN0YXRlKTsNCj4gDQo+ICAJd2hpbGUgKHVwZGF0ZV9w
aXBlcykgew0KPiAtCQlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwg
Y3J0YywNCj4gb2xkX2NydGNfc3RhdGUsDQo+IC0JCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkp
IHsNCj4gKwkJLyoNCj4gKwkJICogQ29tbWl0IGluIHJldmVyc2Ugb3JkZXIgdG8gbWFrZSBiaWdq
b2luZXIgbWFzdGVyDQo+ICsJCSAqIHNlbmQgdGhlIHVhcGkgZXZlbnRzIGFmdGVyIHNsYXZlcyBh
cmUgZG9uZS4NCj4gKwkJICovDQo+ICsJCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0
YXRlX3JldmVyc2Uoc3RhdGUsIGNydGMsDQo+IG9sZF9jcnRjX3N0YXRlLA0KPiArCQkJCQkJCSAg
ICBuZXdfY3J0Y19zdGF0ZSwgaSkgew0KPiAgCQkJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBl
Ow0KPiANCj4gIAkJCWlmICgodXBkYXRlX3BpcGVzICYgQklUKHBpcGUpKSA9PSAwKSBAQCAtNzAz
Niw3DQo+ICs3MDQwLDExIEBAIHN0YXRpYyB2b2lkIHNrbF9jb21taXRfbW9kZXNldF9lbmFibGVz
KHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCQlpbnRlbF9wcmVfdXBk
YXRlX2NydGMoc3RhdGUsIGNydGMpOw0KPiAgCX0NCj4gDQo+IC0JZm9yX2VhY2hfbmV3X2ludGVs
X2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG5ld19jcnRjX3N0YXRlLCBpKSB7DQo+ICsJLyoN
Cj4gKwkgKiBDb21taXQgaW4gcmV2ZXJzZSBvcmRlciB0byBtYWtlIGJpZ2pvaW5lciBtYXN0ZXIN
Cj4gKwkgKiBzZW5kIHRoZSB1YXBpIGV2ZW50cyBhZnRlciBzbGF2ZXMgYXJlIGRvbmUuDQo+ICsJ
ICovDQo+ICsJZm9yX2VhY2hfbmV3X2ludGVsX2NydGNfaW5fc3RhdGVfcmV2ZXJzZShzdGF0ZSwg
Y3J0YywNCj4gbmV3X2NydGNfc3RhdGUsDQo+ICtpKSB7DQo+ICAJCWVudW0gcGlwZSBwaXBlID0g
Y3J0Yy0+cGlwZTsNCj4gDQo+ICAJCWlmICgodXBkYXRlX3BpcGVzICYgQklUKHBpcGUpKSA9PSAw
KQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0K
PiBpbmRleCA5ODZlYzc3NDkwZGUuLjQyMzA3NGQ2OTQ3YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gQEAgLTM0NCw2ICszNDQsMTQg
QEAgZW51bSBwaHlfZmlhIHsNCj4gIAkgICAgIChfX2kpKyspIFwNCj4gIAkJZm9yX2VhY2hfaWYo
Y3J0YykNCj4gDQo+ICsjZGVmaW5lIGZvcl9lYWNoX25ld19pbnRlbF9jcnRjX2luX3N0YXRlX3Jl
dmVyc2UoX19zdGF0ZSwgY3J0YywNCj4gbmV3X2NydGNfc3RhdGUsIF9faSkgXA0KPiArCWZvciAo
KF9faSkgPSAoX19zdGF0ZSktPmJhc2UuZGV2LT5tb2RlX2NvbmZpZy5udW1fY3J0YyAtIDE7IFwN
Cj4gKwkgICAgIChfX2kpID49IDAgICYmIFwNCj4gKwkgICAgICgoY3J0YykgPSB0b19pbnRlbF9j
cnRjKChfX3N0YXRlKS0+YmFzZS5jcnRjc1tfX2ldLnB0ciksIFwNCj4gKwkgICAgICAobmV3X2Ny
dGNfc3RhdGUpID0gdG9faW50ZWxfY3J0Y19zdGF0ZSgoX19zdGF0ZSktDQo+ID5iYXNlLmNydGNz
W19faV0ubmV3X3N0YXRlKSwgMSk7IFwNCj4gKwkgICAgIChfX2kpLS0pIFwNCj4gKwkJZm9yX2Vh
Y2hfaWYoY3J0YykNCj4gKw0KPiAgI2RlZmluZSBmb3JfZWFjaF9vbGRuZXdfaW50ZWxfcGxhbmVf
aW5fc3RhdGUoX19zdGF0ZSwgcGxhbmUsDQo+IG9sZF9wbGFuZV9zdGF0ZSwgbmV3X3BsYW5lX3N0
YXRlLCBfX2kpIFwNCj4gIAlmb3IgKChfX2kpID0gMDsgXA0KPiAgCSAgICAgKF9faSkgPCAoX19z
dGF0ZSktPmJhc2UuZGV2LT5tb2RlX2NvbmZpZy5udW1fdG90YWxfcGxhbmUgJiYgXA0KPiAtLQ0K
PiAyLjQzLjINCg0K
