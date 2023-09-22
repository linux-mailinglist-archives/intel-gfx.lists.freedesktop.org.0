Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6BA7AB8DC
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 20:06:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E7A710E1A0;
	Fri, 22 Sep 2023 18:06:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2396A10E1A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Sep 2023 18:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695406005; x=1726942005;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=6+MtzKWGmQ/KPgE85vKC3OdhhgAXETNb9YEOfEn/4j0=;
 b=jZuvThrPddSBxGDl2f3tZhBrxU8K2qfe0A7CPknraJYwzrOqZIGJ5abA
 61cdxySD5VoWBybYUuQkG6qHHOOmuxzlWOq8KShbH9k6v6mZUjWtz/XZ4
 AoR/dfGM44yvOS61R7MaHaFv9I0WY/jp4dkeGwMnxLlWBUNIrWwpCosrX
 pgw6J/T+ONm3SgKtPP5RiyE+qCJY17SEp3B+969tt8vA79TD8o6FHI5Vo
 HxQqrtifXGLxppst92nxVIBQREdkKqYyFV7pyzhDVjoHgAnf73jdc8DgU
 vz0WHxmhgo/1os5iobpjAU+YhlaUKtovzwC0krvqJLSX/l8x5UWCFZJjj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="379782953"
X-IronPort-AV: E=Sophos;i="6.03,169,1694761200"; d="scan'208";a="379782953"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 11:02:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="1078463483"
X-IronPort-AV: E=Sophos;i="6.03,169,1694761200"; d="scan'208";a="1078463483"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2023 11:02:15 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 22 Sep 2023 11:02:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 22 Sep 2023 11:02:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 22 Sep 2023 11:02:14 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 22 Sep 2023 11:02:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ua4OH/rtdl9wFuDY0mUYNpWQqSalHOZNouNIwWTu0dPmiRx8iohQB7j8gyWDZfgVgrczsoVvFBcuPsuWlylvo+YxCMmUK4LRhEWOqA0YEEoXumNsTJGUc4ZHL6znbtZm0DupOBUnP0C5ChNfF0J6D+ZT1+JN91LfG6ne/K/PpP2kZ+QwbieMg5zSe5wRybfliRJSiZI8fQ+KunJOcWexzP13Xd5Hxr4SDLUHpuea6ukpuhskr/24ybQHP1vyJh1yXI1ckrDjuWO6EJ/xKMm+yGk+lf7ZNJGcMnDOLnIwAiTiOqSCAiVkSnxU3B/VAk9rQSpiS2rq8k8NtwDOxQGjWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6+MtzKWGmQ/KPgE85vKC3OdhhgAXETNb9YEOfEn/4j0=;
 b=AaMQyPiZTeR6mBpkH5Vcay3tqG+067MM9qRZ+Wnj6I1Rp/XWelRL/KoeaX7E31Bj7b/09OqSSJVT9q/WjrBHiHMcs1rlKHr/4U62GXx069L6nEK7HGxHXvSIARmgiDrGpOYAVo9YjgkmPONLf9oTt2iI5Hf9ouz2kX7cNLzci2GHzfd0OOVoQxjYHlfc0JUhuejK/A/djHHmhNz9ZEO/l1jQV9QjGt0KflAISTDtJVPsx/O2exp4qpovmlXgBWkiG4i6tL9Yq5pdoxvKxRsyI4dEnRhSiKwdK+0cXvSpfMi8qiVUwwLVnh9rrcTySB2sVbpELVgtY0OrGfaNUtDIyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH0PR11MB5111.namprd11.prod.outlook.com (2603:10b6:510:3c::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6813.20; Fri, 22 Sep 2023 18:02:12 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::7bf2:1b4c:1512:79c1]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::7bf2:1b4c:1512:79c1%6]) with mapi id 15.20.6813.017; Fri, 22 Sep 2023
 18:02:12 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH v3 2/3] drm/i915/guc: Close deregister-context race
 against CT-loss
Thread-Index: AQHZ45seqXXI7ubqskaSXVFu9eXSZ7AaesqAgAy7zwA=
Date: Fri, 22 Sep 2023 18:02:12 +0000
Message-ID: <804676f03a1760361ea7954681eb208e3af1a38f.camel@intel.com>
References: <20230910035846.493766-1-alan.previn.teres.alexis@intel.com>
 <20230910035846.493766-3-alan.previn.teres.alexis@intel.com>
 <ZQMoG9nW+3lVj60j@intel.com>
In-Reply-To: <ZQMoG9nW+3lVj60j@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH0PR11MB5111:EE_
x-ms-office365-filtering-correlation-id: 0df0cd9c-b19d-4df8-0c32-08dbbb960c12
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tv7OAm30MuyIp6c0JDGnpUi1Ao1fQxStbUqOutvvWI150bQadhGHC2rM6ZMyLj2wWXcYngM7KDFjutpPlm/oU1+ncSWY3gdUXV+xqAEK9to5t60yuCxit0YFXvvTG52bmQz94mDNspTF40jo12tdKDWZRjOiGtPI9Y0+75hGmJyWkpX3tk/lLDL/7rVJfHLJocUBH16GgO7kyyqLjx5ppI8AuCKCAMm7mYxXzypgQJqdYFWPNPkzMwsnBFD1uZW6Jlkwz+0ExYZR3U8v2oOF3CYuwz6qDut4xZfkt/R+IC7e/Qvq+bgyKFfVfgiy9mR5lKv+oQgMESkhPcgZeflOIOXONXLHHYau/iBnvReV3VS0ujqMRN5bap0zf8DHMKZp6xx9kgrFTDiBaCdX6xSZPLYVpnOLlrIhvRXDXa4TSyCCe6o5n6fY6dbteesQ7l3MnwniwsG6EmDxlAOKtsNTuAnWi3FMnXa4eE2auLgk6Q8pb9K7ndJmzcllrCUbG3TdHa0P+ZTIxJlFo799MrMIerA+tXQV/6nqN2gNtW3VvK6m+Gxd059rTCexYenDavExJxemD/Vk8H+tZhXlMP/dC30dgrdBcgEw72JDwd7x/GE2U/8tQh6xOstKaSG56YRv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(396003)(39860400002)(136003)(346002)(186009)(451199024)(1800799009)(54906003)(82960400001)(478600001)(41300700001)(5660300002)(2906002)(38100700002)(91956017)(6862004)(4326008)(38070700005)(8936002)(86362001)(8676002)(76116006)(64756008)(66446008)(66556008)(6636002)(122000001)(66946007)(71200400001)(37006003)(316002)(83380400001)(107886003)(36756003)(26005)(2616005)(66476007)(6512007)(6506007)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T0lzV3ovOVN3b0hsc2pVNHhkSEUydVEvQVp2OStaNkR3MFprYTUvNXNlc3c0?=
 =?utf-8?B?YkVpT2FhWFdzaFpaV0VQMXJaYityeURqNnFhWFE4aVlveEttcHZwQi9CTDdC?=
 =?utf-8?B?Nyt1Nlk2U1AxT1BZUUVMVFVQRWFnMjVHRndCenZYR2dGeXdGYW0vbWUxbUhR?=
 =?utf-8?B?bUgrVm9HQUszdVlNaXpSQ21IUEpZVXczdHBUR1NxRThtdXpwVktqZ2h6UDhZ?=
 =?utf-8?B?blRlTHNXTmw5U1llYlZPOUJ1dmJDcDB6dFVYdXpxeVVkTFhUTnpCZWFlWlJs?=
 =?utf-8?B?ZmJnQUZyeEo2Y3pRYVZodjdYOFNIL29hTVN5cGZzdXZvRlVFVUYrQzl5NEor?=
 =?utf-8?B?SS9DQk16ZWlBNGRrYnV6T0FZZ012YkcveExvb2ptdnJOZml3THRpMWRibjBH?=
 =?utf-8?B?Y3R2dm9NUWVzZHVwK3hrNCsycWh3S3pvNjJZRVJiVXczbFRLeWRLZTVBU1Rq?=
 =?utf-8?B?djBsemhFOFBISlFjK2xmZHdYdG9PbWsxY25zN1JpUE1ma1FDczB4UzZiVWph?=
 =?utf-8?B?TFM1cmpyNWlmWk5wUzN5ZDdwbUlLM0w5NGlpeXh4bkd1dXJ0QzUzL3o0N0sx?=
 =?utf-8?B?TWJUazRvTUh4TlY0cW9aOFhqdytrRHh4U3hwSFYzaEpCZmFHVndRbkxkRDhS?=
 =?utf-8?B?NDZWWWFDOXBEK3RzZzdFRGhDY01pOEk2ZHJ4WXMrc0R2bTBWVE5mUHhpZm12?=
 =?utf-8?B?UHY0VFoxZ0xEMmRGQlJMSGRrZWE2eDhJQjJTY3dxeEZSdWluWExPaDlMRGhQ?=
 =?utf-8?B?bFI1UDhGeXBtSGt4bE85ZkxkVyt3Uk9GdFNZeEZZdEkvWkphbHdlRGdpSEcz?=
 =?utf-8?B?RU5JcGpOY2FyMnpzOFN6ajM1Lyt3bDNxdlBNc1FlNnFKVVdQL2Z2VmVIUjJu?=
 =?utf-8?B?S3lvalplYmJwZVp5UVBDdlc3MEJTVW91Qkt4OUUzRkFlZzlaVjRwaDNKK09M?=
 =?utf-8?B?Ny9hK2R3Rm95YURtZVNLY081Q1VJd1B0L3dCdUdtM09hVis3bTVxNE4rWnhG?=
 =?utf-8?B?bEM2T3g4TDgydW54MngxL0xpSll3dkJRdzhtdkVOTVk3WFpicllCM3J4Q1U4?=
 =?utf-8?B?RWtUdy9EWXIvcE1VdE5paVFpdXVVSFVoNHhqR1A4eG9VbndVaTBmVm93YjVC?=
 =?utf-8?B?bUhqZ3FXaEhDbGxIZGI4dVIrYm5oYWQybXBHdkpSM1A0cTZ5cmc5TENna0d1?=
 =?utf-8?B?a0c3SjFrbEtQQ3Nkc2ZtNFRyTFRTY1ZVeEdRYnNPZDMxUWk3UEJ2UEZ0NkVY?=
 =?utf-8?B?aVB0dzhhckNVc2luVzVOemlvekFJOE94N1lLbi9URGtnL1lDYVB3NE1YWkdS?=
 =?utf-8?B?ejE2bm5aZ0Q1eDRyZEdSM0V2V3k0ZXFOanZ2NFo0dU8wdXpvangxQW9sQ0c2?=
 =?utf-8?B?TVdnanUrVHFpUDZvdGZXcm80Q0cycE1nb3VIQlZkYjZBQ0pYZFB6aVd4UEpz?=
 =?utf-8?B?eTdTT2xhaHpxZXZTSlZ4TE9PRGtGdzhIZ0NiS1ZCR0ZabmhPS21vL2xyNHda?=
 =?utf-8?B?VGVORnF6RStsQmtFUkhZNXBsRkpyOXlZamRQakRWUEtoUXE3REZpTCtwVk5q?=
 =?utf-8?B?V2FsL0VMUU9qM0p3U2FiZEFoMjdrdlRZV0RzWXo2QnlMMGJrT0Z3N1BRd3M3?=
 =?utf-8?B?Rm1ES3lyUlprT0NzMlZvcjJlWk1ZQXFtODU5MkI3bkdPTFVlb2E0N0syQm1s?=
 =?utf-8?B?bnY3dWdhYjZCYXJqZEw5Qzk0dmE5K1FKRnY0V2hFSS85Nzl2Rnp2STlWSDdV?=
 =?utf-8?B?dkhZYk9zOEJwZlZ6dmJwU21nUjAyZy9idHlEa0xIMnl5blJMZXVoNVdjK0VO?=
 =?utf-8?B?aks3RHp4WnNSYVhjelFnclNZcXNjMS90YVphOUZyZFViZEcxWXBCV2hRaVJr?=
 =?utf-8?B?ZGdWVGRESEUrN0lFTk4vc3NlYjJ5R2cvdUtrT253RXdnaDdkeUQrbDc3T1JY?=
 =?utf-8?B?bTU4eWdZR01SeWZVbzYxRlc3RGpiUnE2ekxqL1NjWjhHRzRaNktUbkxlSXVw?=
 =?utf-8?B?V3JXMno2V0NBUWx1a1BDSDRwUVFRZFkrMUhOQWVSdzRNa3Vlbkx1ZnFQaDh4?=
 =?utf-8?B?dEU4TVk1NS9jY0ZJYUxHRjZ4dFZuZE13RmV2OWF5VWlvRlhFZ0Z5bkhZdSs0?=
 =?utf-8?B?cXJGeHN4TXpSOWs2bndWYU5RSmN2UjNGTFU3U284SFZpN2FuMGVDYlJYN2xi?=
 =?utf-8?Q?uo2H7teVBw6iKhGoZZ1F/Ck=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C6356A1E7DF9834C919F32F0468D9137@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0df0cd9c-b19d-4df8-0c32-08dbbb960c12
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2023 18:02:12.5045 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mqeV47GuvfWnTqDrWj8jrDgYT4K1LfQnTQVEvtpEao3Xb6B9yXVKne5Sp0avkdUHrCJWbCqi7gQlFR2uX7mL9jWLKCnOO4xXm2MfQceiDFmNt3ObkJVZ+DfunsCqGDX1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5111
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915/guc: Close
 deregister-context race against CT-loss
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

KGNjIEFuc2h1bWFuIHdobyBpcyB3b3JraW5nIGRpcmVjdGx5IHdpdGggdGhlIHRhc2tmb3JjZSBk
ZWJ1Z2dpbmcgdGhpcykNCg0KVGhhbmtzIGFnYWluIGZvciB0YWtpbmcgdGhlIHRpbWUgdG8gcmV2
aWV3IHRoaXMgcGF0Y2guDQpBcG9sb2dpZXMgZm9yIHRoZSB0YXJkaW5lc3MsIHJlc3QgYXNzdXJl
ZCBkZWJ1ZyBpcyBzdGlsbCBvbmdvaW5nLg0KDQpBcyBtZW50aW9uZWQgaW4gcHJpb3IgY29tbWVu
dHMsIHRoZSBzaWduYXR1cmVzIGFuZCBmcmVxdWVuY3kgYXJlDQpub3cgZGlmZmVyZW50IGNvbXBh
cmVkIHRvIHdpdGhvdXQgdGhlIHBhdGNoZXMgb2YgdGhpcyBzZXJpZXMuDQpXZSBhcmUgc3RpbGwg
aHVudGluZyBmb3IgZGF0YSBhcyB3ZSBhcmUgc3VzcGVjdGluZyBhIGRpZmZlcmVudCB3YWtlcmVm
DQpzdGlsbCBiZWluZyBoZWxkIHdpdGggdGhlIHNhbWUgdHJpZ2dlciBldmVudCBkZXNwaXRlLg0K
DQpUaGF0IHNhaWQsIHdlIHdpbGwgY29udGludWUgdG8gcmViYXNlIC8gdXBkYXRlIHRoaXMgc2Vy
aWVzIGJ1dCBob2xkIG9mZiBvbiBhY3R1YWwNCm1lcmdlIHVudGlsIHdlIGNhbiBiZSBzdXJlIHdl
IGhhdmUgYWxsIHRoZSBpc3N1ZXMgcmVzb2x2ZWQuDQoNCk9uIFRodSwgMjAyMy0wOS0xNCBhdCAx
MTozNCAtMDQwMCwgVml2aSwgUm9kcmlnbyB3cm90ZToNCj4gT24gU2F0LCBTZXAgMDksIDIwMjMg
YXQgMDg6NTg6NDVQTSAtMDcwMCwgQWxhbiBQcmV2aW4gd3JvdGU6DQo+ID4gSWYgd2UgYXJlIGF0
IHRoZSBlbmQgb2Ygc3VzcGVuZCBvciB2ZXJ5IGVhcmx5IGluIHJlc3VtZQ0KPiA+IGl0cyBwb3Nz
aWJsZSBhbiBhc3luYyBmZW5jZSBzaWduYWwgY291bGQgbGVhZCB1cyB0byB0aGUNCmFsYW46c25p
cA0KDQoNCj4gPiBAQCAtMzE4OCwxOSArMzIwMiwzMyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgZ3Vj
X2xyY19kZXNjX3VucGluKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkNCj4gPiAgCS8qIFNlYWwg
cmFjZSB3aXRoIFJlc2V0ICovDQo+ID4gIAlzcGluX2xvY2tfaXJxc2F2ZSgmY2UtPmd1Y19zdGF0
ZS5sb2NrLCBmbGFncyk7DQo+ID4gIAlkaXNhYmxlZCA9IHN1Ym1pc3Npb25fZGlzYWJsZWQoZ3Vj
KTsNCj4gPiANCmFsYW46c25pcA0KPiA+ICsJLyogQ2hhbmdlIGNvbnRleHQgc3RhdGUgdG8gZGVz
dHJveWVkIGFuZCBnZXQgZ3QtcG0gKi8NCj4gPiArCV9faW50ZWxfZ3RfcG1fZ2V0KGd0KTsNCj4g
PiArCXNldF9jb250ZXh0X2Rlc3Ryb3llZChjZSk7DQo+ID4gKwljbHJfY29udGV4dF9yZWdpc3Rl
cmVkKGNlKTsNCj4gPiArDQo+ID4gKwlyZXQgPSBkZXJlZ2lzdGVyX2NvbnRleHQoY2UsIGNlLT5n
dWNfaWQuaWQpOw0KPiA+ICsJaWYgKHJldCkgew0KPiA+ICsJCS8qIFVuZG8gdGhlIHN0YXRlIGNo
YW5nZSBhbmQgcHV0IGd0LXBtIGlmIHRoYXQgZmFpbGVkICovDQo+ID4gKwkJc2V0X2NvbnRleHRf
cmVnaXN0ZXJlZChjZSk7DQo+ID4gKwkJY2xyX2NvbnRleHRfZGVzdHJveWVkKGNlKTsNCj4gPiAr
CQlpbnRlbF9ndF9wbV9wdXQoZ3QpOw0KPiANCj4gVGhpcyBpcyBhIG1pZ2h0X3NsZWVwIGluc2lk
ZSBhIHNwaW5fbG9jayEgQXJlIHlvdSAxMDAlIGNvbmZpZGVudCBubyBXQVJODQo+IHdhcyBzZWVp
bmcgZHVyaW5nIHRoZSB0ZXN0cyBpbmRpY2F0ZWQgaW4gdGhlIGNvbW1pdCBtc2c/DQphbGFuOiBH
b29kIGNhdGNoIC0gaSBkb250IHRoaW5rIHdlIHNhdyBhIFdBUk4gLSBJJ2xsIGdvIGJhY2sgYW5k
IGNoZWNrDQp3aXRoIHRoZSB0YXNrIGZvcmNlIC0gaSBzaGFsbCByZXdvcmsgdGhpcyBmdW5jdGlv
biB0byBnZXQgdGhhdCBvdXRzaWRlIHRoZSBsb2NrLg0KDQo+IA0KPiA+ICsJfQ0KPiA+ICsJc3Bp
bl91bmxvY2tfaXJxcmVzdG9yZSgmY2UtPmd1Y19zdGF0ZS5sb2NrLCBmbGFncyk7DQo+ID4gKw0K
PiA+ICsJcmV0dXJuIDA7DQo+IA0KPiBJZiB5b3UgYXJlIGFsd2F5cyByZXR1cm5pbmcgMCwgdGhl
cmUncyBubyBwb2ludGluZyBpbiBzL3ZvaWQvaW50Li4uDQpBbGFuOiBhZ3JlZWQgLSB3aWxsIGNo
YW5nZSB0byB2b2lkLg0KPiA+IA0KPiA+IA0KDQphbGFuOnNuaXANCj4gPiBAQCAtMzI3OSw2ICsz
MzIyLDE3IEBAIHN0YXRpYyB2b2lkIGRlc3Ryb3llZF93b3JrZXJfZnVuYyhzdHJ1Y3Qgd29ya19z
dHJ1Y3QgKncpDQo+ID4gIAlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gZ3VjX3RvX2d0KGd1Yyk7DQo+
ID4gIAlpbnQgdG1wOw0KPiA+ICANCj4gPiArCS8qDQo+ID4gKwkgKiBJbiByYXJlIGNhc2VzIHdl
IGNhbiBnZXQgaGVyZSB2aWEgYXN5bmMgY29udGV4dC1mcmVlIGZlbmNlLXNpZ25hbHMgdGhhdA0K
PiA+ICsJICogY29tZSB2ZXJ5IGxhdGUgaW4gc3VzcGVuZCBmbG93IG9yIHZlcnkgZWFybHkgaW4g
cmVzdW1lIGZsb3dzLiBJbiB0aGVzZQ0KPiA+ICsJICogY2FzZXMsIEd1QyB3b24ndCBiZSByZWFk
eSBidXQganVzdCBza2lwcGluZyBpdCBoZXJlIGlzIGZpbmUgYXMgdGhlc2UNCj4gPiArCSAqIHBl
bmRpbmctZGVzdHJveS1jb250ZXh0cyBnZXQgZGVzdHJveWVkIHRvdGFsbHkgYXQgR3VDIHJlc2V0
IHRpbWUgYXQgdGhlDQo+ID4gKwkgKiBlbmQgb2Ygc3VzcGVuZC4uIE9SLi4gdGhpcyB3b3JrZXIg
Y2FuIGJlIHBpY2tlZCB1cCBsYXRlciBvbiB0aGUgbmV4dA0KPiA+ICsJICogY29udGV4dCBkZXN0
cnVjdGlvbiB0cmlnZ2VyIGFmdGVyIHJlc3VtZS1jb21wbGV0ZXMNCj4gDQo+IHdobyBpcyB0cmln
Z2VyaW5nIHRoZSB3b3JrIHF1ZXVlIGFnYWluPw0KDQphbGFuOiBzaG9ydCBhbnN3ZXI6IHdlIGRv
bnQga25vdyAtIGFuZCBzdGlsbCBodW50aW5nIHRoaXMNCihnZXR0aW5nIGNsb3NlciBub3cuLiB1
c2luZyB0YXNrIHRnaWQgc3RyLW5hbWUgbG9va3VwcykuDQppbiB0aGUgZmV3IHRpbWVzIEkndmUg
c2VlbiBpdCwgdGhlIGNhbGxzdGFjayBJJ3ZlIHNlZW4gbG9va2VkIGxpa2UgdGhpczoNCg0KWzMz
NzYzLjU4MjAzNl0gQ2FsbCBUcmFjZToNClszMzc2My41ODIwMzhdICA8VEFTSz4NClszMzc2My41
ODIwNDBdICBkdW1wX3N0YWNrX2x2bCsweDY5LzB4OTcNClszMzc2My41ODIwNTRdICBndWNfY29u
dGV4dF9kZXN0cm95KzB4MWI1LzB4MWVjDQpbMzM3NjMuNTgyMDY3XSAgZnJlZV9lbmdpbmVzKzB4
NTIvMHg3MA0KWzMzNzYzLjU4MjA3Ml0gIHJjdV9kb19iYXRjaCsweDE2MS8weDQzOA0KWzMzNzYz
LjU4MjA4NF0gIHJjdV9ub2NiX2NiX2t0aHJlYWQrMHhkYS8weDJkMA0KWzMzNzYzLjU4MjA5M10g
IGt0aHJlYWQrMHgxM2EvMHgxNTINClszMzc2My41ODIxMDJdICA/IHJjdV9ub2NiX2dwX2t0aHJl
YWQrMHg2YTcvMHg2YTcNClszMzc2My41ODIxMDddICA/IGNzc19nZXQrMHgzOC8weDM4DQpbMzM3
NjMuNTgyMTE4XSAgcmV0X2Zyb21fZm9yaysweDFmLzB4MzANClszMzc2My41ODIxMjhdICA8L1RB
U0s+DQoNCkkgZGlkIGFkZCBhZGRpdGlvbmFsIGRlYnVnLW1zZyBmb3IgdHJhY2tpbmcgYW5kIEkg
cmVjYWxsIHNlZWluZyB0aGlzIHNlcXVlbmNlIHZpYSBpbmRlcGVuZGFudCBjYWxsc3RhY2tzIGlu
IHRoZSBiaWcgcGljdHVyZToNCglpOTE1X3N3X2ZlbmNlX2NvbXBsZXRlID4gX19pOTE1X3N3X2Zl
bmNlX2NvbXBsZXRlIC0+IF9faTkxNV9zd19mZW5jZV9ub3RpZnkoZmVuY2UsIEZFTkNFX0ZSRUUp
IC0+IDwuLmRlbGF5ZWQ/Li4+DQoJWyBkcm0gZmVuY2Ugc3luYyBmdW5jIF0gPC4uLj4gZW5naW5l
c19ub3RpZnkgPiBjYWxsX3JjdSgmZW5naW5lcz5yY3UsIGZyZWVfZW5naW5lc19yY3UpIDwuLmRl
bGF5ZWQ/Li4+DQoJZnJlZV9lbmdpbmVzIC0+IGludGVsX2NvbnRleHRfcHV0IC0+IC4uLiBba3Jl
Zi1kZWNdIC0tPiBndWNfY29udGV4dF9kZXN0cm95DQoNClVuZm9ydHVuYXRlbHksIHdlIHN0aWxs
IGRvbid0IGtub3cgd2h5IHRoaXMgaW5pdGlhbCAiaTkxNV9zd19mZW5jZV9jb21wbGV0ZSIgaXMg
Y29taW5nIGR1cmluZyBzdXNwZW5kLWxhdGUuDQpOT1RFMTogaW4gdGhlIGNvdmVyIGxldHRlciBv
ciBwcmlvciBjb21tZW50LCBJIGhvcGUgaSBtZW50aW9uZWQgdGhlIHJlcHJvZHVjdGlvbiBzdGVw
cyB3aGVyZQ0KaXQgb25seSBvY2N1cnMgd2hlbiBoYXZpbmcgYSB3b3JrbG9hZCB0aGF0IGRvZXMg
bmV0d29yayBkb3dubG9hZCB0aGF0IGJlZ2lucyBkb3dubG9hZGluZyBqdXN0DQpiZWZvcmUgc3Vz
cGVuZCBpcyBzdGFydGVkIGJ1dCBjb21wbGV0ZXMgYmVmb3JlIHN1c3BlbmQgbGF0ZS4gV2UgYXJl
IGdldHRpbmcgY2xvc2UgdG8gZmluZGluZw0KdGhpcyAtIHRha2luZyB0aW1lIGJlY2F1c2Ugb2Yg
dGhlIHJlcHJvZHVjdGlvbiBzdGVwcy4NCg0KQW5zaHVtYW4gY2FuIGNoaW1lIGluIGlmIGhlIGlz
IHNlZWluZyBuZXcgc2lnbmF0dXJlcyB3aXRoIGRpZmZlcmVudCBjYWxsc3RhY2sgLw0KZXZlbnRz
IGFmdGVyIHRoaXMgcGF0Y2ggaXMgYXBwbGllZC4NCg0KDQo+IEkgbWVhbiwgSSdtIHdvbmRlcmlu
ZyBpZiBpdCBpcyBuZWNlc3NhcnkgdG8gcmUtc2NoZWR1bGUgaXQgZnJvbSBpbnNpZGUuLi4NCj4g
YnV0IGFsc28gd29uZGVyIGlmIHRoaXMgaXMgc2FmZSBhbnl3YXkuLi4NCg0KYWxhbjogc28gbXkg
dGhvdWdodCBwcm9jZXNzLCBhbHNvIGFmdGVyIGNvbnN1bHRpbmcgd2l0aCBKb2huIGFuZCBEYW5p
ZWxlLCB3YXM6DQpzaW5jZSB3ZSBoYXZlIGEgbGluayBsaXN0IHRvIGNvbGxlY3QgdGhlIGxpc3Qg
b2YgY29udGV4dHMgdGhhdCBuZWVkIHRvIGJlIGRlcmVpZ3N0ZXJlZCwNCmFuZCBzaW5jZSB3ZSBo
YXZlIHVwIHRvIDY0ayAoMzJrIGV4Y2x1ZGluZyBtdWx0aS1scmMpIGd1Yy1pZHMsIHRoZXJlIHJl
YWxseSBpcw0KcmlzayBpcyBqdXN0IGtlZXBpbmcgaXQgaW5zaWRlIHRoZSBsaW5rIGxpc3QgdW50
aWwgd2UgcmVhY2ggb25lIG9mIHRoZSBmb2xsb3dpbmc6DQoNCjEuIGZ1bGwgc3VzcGVuZCBoYXBw
ZW5zIGFuZCB3ZSBhY3R1YWxseSByZXNldCB0aGUgZ3VjIC0gaW4gd2hpY2ggY2FzZSB3ZSB3aWxs
IHJlbW92ZQ0KICAgYWxsIGNvbnRleHRzIGluIHRoaXMgbGluayBsaXN0IGFuZCBjb21wbGV0ZWx5
IGRlc3Ryb3kgdGhlbSBhbmQgcmVsZWFzZSBhbGwgcmVmZXJlbmNlcw0KICAgaW1tZWRpYXRlbHkg
d2l0aG91dCBjYWxsaW5nIGFueSBoMmcuICh0aGF0IGNsZWFudXAgd2lsbCBvY2N1cnMgbmVhcmx5
IHRoZSBlbmQgb2YNCiAgIGdlbSdzIHN1c3BlbmQgbGF0ZSwgYWZ0ZXIgd2hpY2ggdGhpcyB3b3Jr
ZXIgd2lsbCBmbHVzaCBhbmQgaWYgaXQgaGFkIHBlbmRpbmcgY29udGV4dHMNCiAgIHdvdWxkIGhh
dmUgYmFpbGVkIHdpdGggIWludGVsX2d1Y19pc19yZWFkeS4NCg0KMi4gc3VzcGVuZCBpcyBhYm9y
dGVkIHNvIHdlIGNvbWUgYmFjayBpbnRvIHRoZSByZXN1bWUgc3RlcHMgYW5kIHdlIGV2ZW50dWFs
bHksIGF0IHNvbWUgcG9pbnQNCiAgIGdldCBhbm90aGVyIHJlcXVlc3QgY29tcGxldGlvbiB0aGF0
IHNpZ25hbHMgYSBjb250ZXh0IGZyZWVpbmcgdGhhdCB3ZSBlbmQgdXAgcmV0cmlnZ2VyaW5nDQog
ICB0aGlzIHdvcmtlciBpbiB3aGljaCB3ZSdsbCBmaW5kIHR3byBjb250ZXh0cyByZWFkeSB0byBi
ZSBkZXJlZ2lzdGVyZWQuDQoNCg0KPiANCj4gPiArCSAqLw0KPiA+ICsJaWYgKCFpbnRlbF9ndWNf
aXNfcmVhZHkoZ3VjKSkNCj4gPiArCQlyZXR1cm47DQo+ID4gKw0KPiA+ICAJd2l0aF9pbnRlbF9n
dF9wbShndCwgdG1wKQ0KPiA+ICAJCWRlcmVnaXN0ZXJfZGVzdHJveWVkX2NvbnRleHRzKGd1Yyk7
DQo+ID4gIH0NCj4gPiAtLSANCj4gPiAyLjM5LjANCj4gPiANCg0K
