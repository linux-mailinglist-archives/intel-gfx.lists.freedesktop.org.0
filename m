Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 658DA6FA023
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 08:51:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13B4B10E124;
	Mon,  8 May 2023 06:51:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B626810E124
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 06:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683528659; x=1715064659;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=wQZcxbCI8bh8RQRuYNJGhNgwxlXFg4mFDdf9S9k+Pwg=;
 b=DNrAMHig45kxmnPxYre0LGQ82/ggXihc9BCTa70JSpQbGtM+hQRRgHSq
 0GVN2YWjAO8BZU3iiVmIIcwuZHByEzeqdI8/bFfObiSxJpUSb2y1hRPG6
 QwenNhlzMBcBEX6ZQI94g85xH3zYC3EFeS6QTqcGqfeA6vrgrG7iFmtbn
 BHQqp6YQMmo2RclgDoNac3RazxJB/LIKxk0j5bt39UjKUpHfa1RwqA95I
 IV/W3d/NnJgA+i8zeXRHEyT2KWthJGOrHnFcGQkAcshuMfAUlkTFG8NYm
 qY9mPszDARgz/QIU5JXwUCzHgLffDwcpftWb/5JfRAz5O4mSFALNKLQwz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="348398745"
X-IronPort-AV: E=Sophos;i="5.99,258,1677571200"; d="scan'208";a="348398745"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2023 23:50:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="822568862"
X-IronPort-AV: E=Sophos;i="5.99,258,1677571200"; d="scan'208";a="822568862"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 07 May 2023 23:50:57 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 7 May 2023 23:50:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 7 May 2023 23:50:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 7 May 2023 23:50:56 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 7 May 2023 23:50:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oA52fHiMQINWZ1Gq+ONCQntvWDD/0tWNwVdSXSYP+Js0jsZYXCvLfcektW92sr1939KhKQrIQulwI1cXTy17bDaoVFNlslR+tn5MgUxv8VCsFIqNPH2z6JEQHJemKJxiuFILKsleKTWRtLnN24RBRdq6zRM9lnp7eaZb3mQn8nqX1c+NeQnvXyMi1ry7zo1+peXBSzlrORwOBzBQrazxyPhNby2/kBx0dIZM4zrqxfvLoVi7W+iAibwarITMRfeoW2REQtxY+cI3ZvLeVQZYwVvqV9zBKmD2yYTqYrbWec4/3pGkNJ3d2WOiN5vO5+ejVUpDnOt4S525yhip3BUJ7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wQZcxbCI8bh8RQRuYNJGhNgwxlXFg4mFDdf9S9k+Pwg=;
 b=DmvzZ/Mgtx+2i7/VTFKj2ehCtvAUF7gpfbyOqXm9GBo5fENPCehgx2Dm6QQ2o21HxpBQHAfeqsmIDdo8S7SfqpDm31ZE1qyTwi7K9fw7fSc3LlH97Cj7UFCulqozmVgWkBAwxMIo05IyFaP1xr6RmNlnrBQMgPbaM9nkXExrJ2nKJF9PJUkG/taluZ6fAWdvpCrYkd7eLD4IuOB+naDI/UVldYxQDeYLmgYjf7rQdBWr/WlIXlbFARlCcK9TBytCbQuEXFTbhDJ4Ie9LCDbUWY/UTsbu5ztstmQQv+jJV0qj0OFfZgqkD1efWhrMjU8eHagbmdW/UKfxJuILIcPvRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by DM6PR11MB4675.namprd11.prod.outlook.com (2603:10b6:5:2ac::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Mon, 8 May
 2023 06:50:54 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::16ef:78fa:40dc:31bc]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::16ef:78fa:40dc:31bc%5]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 06:50:54 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Fix wrong condition in bxt_set_cdclk for DG2
Thread-Index: AQHZgCj6/YyYQnNSnEiiczgf7R46oq9P8ouA
Date: Mon, 8 May 2023 06:50:54 +0000
Message-ID: <e838f9f8fabbe654ecc21266cdd004b1e4f21636.camel@intel.com>
References: <20230506144217.26075-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230506144217.26075-1-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|DM6PR11MB4675:EE_
x-ms-office365-filtering-correlation-id: 8c79f6d9-eb05-4aeb-2162-08db4f9091f7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pyAfC3QzPMqPissjSozoCbXatPgj3SLMLjAIyONgcWgoyeFUlDIG6OJcgnjSeTevqZH0VZ71J3RO/VgChyhMg57Z2hyllW+5ZW25RFRBJTiabEGFMAroMYfr9o36S/HDn3681oZK609yF0cDN5Dl3ZSWopwFO0PpiAMuGq9kOGZTVd3c1pcbAukLLMKC7Rozx2nEBxur8n15DAYuAHvDsHnD75iNfMcvzbUnVNuJD9uF4jesdAq2mN75b/u8BLiB/oFq7AZ/z7Yrh1fROFtd9maKPSZgjEUfHhPyf/YE3tCpuARG20sS5jzyqry3jTa8pNK46ogA4kqCuYMWYvHh1AafS4+CR3sZgdz7ntad8cx54zqBLaokCEg+vZo7X6n/Z42M2MT0uGd2PFwTo0KITgEVUfyH2G2oaLeT8gqdcEikKMPIOUO1PnX8LnWQrq4Ag3BdfKUGt93fHpvYK9Cv6m/gsEdeCdrbz7trqzmXE5b54YurwGVf8PfXQ+u4V/Qaqn90lIGDevfdcb06U/ELgGwevG794qoeYIufxe0JXM6ZIdHxeJjClMw2g1FbH2BryZXIObq8z4O+jbHzV4EriAIMRSDHToXNsj7o/Ia5Uy1CE/OIzl1yOUvIcpCnZg66
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(366004)(136003)(39860400002)(346002)(451199021)(36756003)(38100700002)(2906002)(38070700005)(316002)(8676002)(8936002)(5660300002)(86362001)(66476007)(66556008)(66946007)(76116006)(66446008)(64756008)(41300700001)(122000001)(82960400001)(4326008)(91956017)(83380400001)(186003)(107886003)(6512007)(6506007)(26005)(6486002)(478600001)(2616005)(71200400001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MTZwYVVkNncyZWQrUjlsdTNIbHQ5OXREVFcyZ2xJTGhjMDJiQ0R1RW51QkdH?=
 =?utf-8?B?U01YeU52d2VIdlhXcVRZdk03aEZzSVZDWTA4dXVoc0Y3STdzWkxvUUVMbW9n?=
 =?utf-8?B?MklwNnZueHhqc1VjczB0ZFBlLzBlUVhFSzB3KzlBWHVMRGVFTFlJWk9CTEFL?=
 =?utf-8?B?VlUxeURYTTdRaklwWTQ3MnF4dWJOMU50SHRTM3RKd0kwRFJuenB6dFMreU4r?=
 =?utf-8?B?OStnbUJNMFoxWHJNMWg1UERueEU3ZlNvOWtSUXRlWi9paU03VHFSekk4dEFi?=
 =?utf-8?B?dVA5Rk1FRVFBbGRyRGFFRjNWUnFiTFFkMi9UQVdjMmJWczNKY1lOM1ZpZnFq?=
 =?utf-8?B?OHAraDVDbC9hZXRzM01keUtJSEZzNEFWd1BROGJuWHRPR2hIRTV1bHM3RWs3?=
 =?utf-8?B?MzltSUp3Rm9KdWZuMG90NldUcXJDNTNERGJsQi80QnVBNWFsNGZoa0dmTGpR?=
 =?utf-8?B?aGVJRmFnS2RTcTdncklsaElBaEdtaFhidFNMWkduS1BKTHVFTU1GTHMzS3BF?=
 =?utf-8?B?M3JYTUFSSHFQSFVBdDF2R3g1ZlN1d2RCTnpBT0hZdmtJSHR0cERSQTJrU3I3?=
 =?utf-8?B?bzhQTG9yUGhFYi9rV1lMdWZ5UXhkamZJUm9hZTNNdUpTL0F2Tmh0eWpYOTlk?=
 =?utf-8?B?UlNwcjBGaTN3bWRjcm96eGQ1WCtHMXRhV2tVOTE2ZDk2cXNndGNIWlVyUWNh?=
 =?utf-8?B?U1dsKzBZWHowMEVOUHdWRU5XU1VlNFpLZ1dLRFV2TVRhcytFR2p6UzdRNDJZ?=
 =?utf-8?B?dFVNdUp6NytvNmcyVWgrTTJPUTU0S3FKeDUrdHd0aHZMaG1rNUVYZWZqcitn?=
 =?utf-8?B?U2lEaml3M25FNFNkVDg0eEdRdTlhM1BVZnR2cGx3SEtGNitmTFBDb0NBUHVQ?=
 =?utf-8?B?djAzRldkZmZwWVBTTDZsWm5aajM2cnU4by9zbXg2TkNsLzZrYUxLdmdSM1Yz?=
 =?utf-8?B?bEd3cjByK3hKQk45MTQ3UWJORml3UGxkUFg2cEdIaWZxZlJOMTd5NzMwQ0hr?=
 =?utf-8?B?cXc4b05GUm85a3d5Q0lwc2s1eWtsek8rSXVRUzROKzFmaHZacjBWQ2hEdkZL?=
 =?utf-8?B?NHpUQkh2S01tR25HQ3d5b0tPMFpHb0lKcUV6ajd6c0w0MjdBODRvMHU1TlZu?=
 =?utf-8?B?UlN4SVBpNnhFTkR3OUxTc0NNQkMwZ250aGJlKzJLTHQzVkFiTm96ckQybTgv?=
 =?utf-8?B?SW5LS3F5Y0RnNmM1TnpseVdwak0vWlZ6c3VtazRNL1JtK2xmOC9VWVZDYWdo?=
 =?utf-8?B?bnpkVEgwSnVuN3JGMVVmY3hRV0JZSDZkVnNBVHBuREFPNTJjQWxHcDFmTCtk?=
 =?utf-8?B?bnhyZlI5THMvVEdNYThSTCs5dVlsVTgwVzQrRW95c09VR01IK0VpZ1lEbmE2?=
 =?utf-8?B?elkzZDgrclhLUkhsTnFjallQQWpkWXJIRVA1Z3RZRUhjQjFnS01FZkNzSkVB?=
 =?utf-8?B?T08xbFNBRkg0Z3JKUitpR2ExbDNFdENnY3JtNDlwaGZEWEZpSTUzQU0yWTJo?=
 =?utf-8?B?b1ZTR0ZwRUdiZ3VkckYyTlZyQlN0YWFsUVR1MWZxR3hmdWdtUE5SVmlCeDhW?=
 =?utf-8?B?eFcxU1RycEJLS2VrRGorK056ZFA5WS9iRHRWWmZKd3krWGtYd2dzL0ZyMjZl?=
 =?utf-8?B?cytwVk52cmUxTEpWT2wyNDF1dTlFcDRnTkRjSEdHaTJWVmc0VmVNb0pITDYr?=
 =?utf-8?B?TjQrV0FUamFYQkRvcUh0dE4zc2JNRWc4dFdiZmI4cHgwcTRTUlZjaWpiVVJG?=
 =?utf-8?B?ZUhjU1RVOGlUYTlBTExqK2gxSkZGUHVhemFnSlRQTU96R0J2N3hhZVQ2Rzkx?=
 =?utf-8?B?ZytZVk5iNnhsZytZWjQ1MUJpTGw5WTgvWVF3Sk5FMDA0VzNLdUhTdFFpRG1w?=
 =?utf-8?B?RmtmR0t0aXNadTd0V3BDWXppcVFESUhlbWtWeERUQVZkTHhuZ3NlaUM5RkF6?=
 =?utf-8?B?Qi9kcHlHUzVva2F3NzFlckNiY051UUtYRVI3NlRkQXNJOGFKYkpFbDZ0TG9h?=
 =?utf-8?B?T0ltNEJzSnhueUJXZDNUcHczVklmMUtBeHdJc3JCbjVnaUFMTmNhZkorSCtq?=
 =?utf-8?B?NkEvQ3JkTlYyWTNJNUdoUzVKOFJ4Lzhha1N5UTByWUtZS1F4bXJ5VEd3K2NS?=
 =?utf-8?B?SnVGNUdDNC9NRVYxOGI0TTJNeEg2SmRxYzF4M0kwc1l4a21XcTVIYmZUYXVx?=
 =?utf-8?Q?Oz3ybuL5IJ4AxO9zKvnnv6o=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9F14469F4B63A44A9C18F19FAB057B25@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c79f6d9-eb05-4aeb-2162-08db4f9091f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2023 06:50:54.5815 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Eam/jSvPq9rhibRyCfWslQs7cpmzAj18ZV0bZJBVSJ/Fe4X1tPxofq91BTg11eC/M+SPpuwgy6DtsdTff7f2Pm9EQjcFQXLtunPUH4preEI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4675
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix wrong condition in
 bxt_set_cdclk for DG2
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

T24gU2F0LCAyMDIzLTA1LTA2IGF0IDE3OjQyICswMzAwLCBTdGFuaXNsYXYgTGlzb3Zza2l5IHdy
b3RlOgo+IEJ5IG15IG93biBtaXN0YWtlLCBhZnRlciBhZGRpbmcgIUlTX0RHMiBpbnRvIHdyb25n
IGJyYW5jaCwKPiBieHRfc2V0X2NkY2xrIHN0YXJ0ZWQgdG8gZXhlY3V0ZSBjb2RlIGludGVuZGVk
IGZvciBwbGF0Zm9ybXMKPiBnZW4gPCAxMSwgd2hpY2ggaXMgd3JvbmcuCj4gTW92ZSBJU19ERzIg
Y2hlY2sgdG8gYmV0dGVyIHBsYWNlLgo+IAo+IEZpeGVzOiBjZWIwY2MzYjQyODggKCJkcm0vaTkx
NTogQ29tbXVuaWNhdGUgZGlzcGxheSBwb3dlciBkZW1hbmRzIHRvIHBjb2RlIikKPiBTaWduZWQt
b2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNv
bT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8
IDQgKystLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFp
QGludGVsLmNvbQoKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jZGNsay5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nk
Y2xrLmMKPiBpbmRleCBhMTEwOTJkZWFiYTYuLjZiZWQ3NWYxNTQxYSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKPiBAQCAtMTg5Niw5ICsxODk2LDkg
QEAgc3RhdGljIHZvaWQgYnh0X3NldF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCj4gwqDCoMKgwqDCoMKgwqDCoCAqIG1haWxib3ggY29tbXVuaWNhdGlvbiwgc2tpcAo+
IMKgwqDCoMKgwqDCoMKgwqAgKiB0aGlzIHN0ZXAuCj4gwqDCoMKgwqDCoMKgwqDCoCAqLwo+IC3C
oMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTQpCj4gK8KgwqDCoMKg
wqDCoMKgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxNCB8fCBJU19ERzIoZGV2X3ByaXYp
KQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogTk9PUCAqLzsKPiAtwqDCoMKg
wqDCoMKgwqBlbHNlIGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTEgJiYgIUlTX0RHMihk
ZXZfcHJpdikpCj4gK8KgwqDCoMKgwqDCoMKgZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYp
ID49IDExKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0ID0gc2tsX3Bjb2Rl
X3JlcXVlc3QoJmRldl9wcml2LT51bmNvcmUsIFNLTF9QQ09ERV9DRENMS19DT05UUk9MLAo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgU0tMX0NEQ0xLX1BSRVBBUkVfRk9SX0NIQU5HRSwKPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoFNLTF9DRENMS19SRUFEWV9GT1JfQ0hBTkdFLAoK
