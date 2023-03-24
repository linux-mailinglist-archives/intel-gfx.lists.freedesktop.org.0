Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB3C6C7BE5
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 10:49:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FBA110EBAB;
	Fri, 24 Mar 2023 09:49:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08BA010EBAB
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 09:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679651342; x=1711187342;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=j216PWrwTt3kCi9DEA2YkYHLRkHwnjEsKdpwhAcHGP8=;
 b=TL70gfoqnjKQW1nH9z/YiCkUl6cHkiscjWtOr8zyKvF3NcuRuqRZTBS+
 sNXmyJJtLizOkZcVIqlc4KbIy1KiyW57iXNQ0OUVoESrhvVnmT5tW7Rf1
 YMAvLnifUw6ffM6EjuSlKkqcyQsUtdFnzDk0d1tNqrO9EtKSavFwInyfi
 BbP0zYBM9np83F6jIePH0oo2YVZY0inVdkdIl+7cyX91h0wnDih3dif4k
 B3ut7vAxzfzzgrIerREJR8HksvpegbXyO3lPJtdSOkl36gNvTTSW+Aukw
 M01uEqMWcWVt0kYOKb2HDlzhsViXuGPeZLc19igM5prCpWey3tgUj4fPO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="337245728"
X-IronPort-AV: E=Sophos;i="5.98,287,1673942400"; d="scan'208";a="337245728"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 02:48:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="676077835"
X-IronPort-AV: E=Sophos;i="5.98,287,1673942400"; d="scan'208";a="676077835"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 24 Mar 2023 02:48:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 02:48:45 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 02:48:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 02:48:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 02:48:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YduWNLJG22/ksCSgBjtRERtU1ahA6Gpd/eQk62J2MSoqQe6m2hYQkHNGWYpa9Yd9wfOkpa6r3EcctPA/QdxfmH99sx63xJ2CkfBFAyhgLd4LLBq085ucIPN7uB3ylSK4ROmDC3GS5JGXfMsB0qDGODiNUtcphEnz8q0Ohc9IG56AHctd2NcdatdgyysPlPlySiUDh9RisbjRYrVd4nE0AxAVSK83mrW3Zom8/duZEi0xYbGM6a3pOIxFpWC+nSB00YfxTIDxbX6zAV2hk2viiUvskZbrnPMsdTBe/Rs6EabGhlJ3OVi6av7TaZZEfbX+y3mGCA2P/uFnrhEPoCCWdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j216PWrwTt3kCi9DEA2YkYHLRkHwnjEsKdpwhAcHGP8=;
 b=XyTing3xIuJQp6Sj0eYjTjDKuaKxwkCjGINvhU3MGuxfUV1KDS26bSDrPZM8Hv58wk8Jmi4823NnAOUGmXhB5bNc+171AGpO5FZneuh6vBLdnCP64ay1pe4QC3dpMOrZG0ALj0LrN55+2hz6B9KFq2vbvAd3Rjz2tvPHBec/Eha7uHhU3Qla96HZkvaBd7kF8eTkMNORMx7TJlcOy3HKXE48Wq0b3utZmYwyAE4oAT1hxEEyqcgCETgoZyAKwdIoGikaF7exaiEHEpo273VvfJOrkOP/K96keMVetseZgPARF4Bya3fOnLIOd1fRdXMvzHSN5Kh3qWV9bpJErf1jcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by IA1PR11MB8222.namprd11.prod.outlook.com (2603:10b6:208:44e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Fri, 24 Mar
 2023 09:48:34 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%7]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 09:48:33 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 03/29] drm/i915/tc: Rename
 tc_phy_status_complete() to tc_phy_is_ready()
Thread-Index: AQHZXZK4FbIZu4kBFkCv8y7yHj+zla8JsFKQ
Date: Fri, 24 Mar 2023 09:48:33 +0000
Message-ID: <MW4PR11MB7054178890F0D9DD701BBB65EF849@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-4-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-4-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|IA1PR11MB8222:EE_
x-ms-office365-filtering-correlation-id: 4fa1d7c8-170c-44b3-d367-08db2c4ceed4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aco4iDyYRMGXUGN/LSgGF6c8vLXs7w6XCPOria2tWeSrrcn7JPvECBto3ZHKdzw/i0SyLQIKcxPhRPNRIjG2OzGh9A/RL0FY6b3bdWGC57CJQck2w4r+F01MplFkR0n/zOXCY27a9lhwRjFpKOOMgKqQgneYhWNzM1/Xso/jxDh/rcTwKte+0zHAN9HfH0Z6xcJBg2wzjhP3xx2s+nHpx+C79jzXEcxYtSXeLIMN80/CZPoKcPoIpKCqi2HemAQmhsxkKWOaVAvcM4d7z//pQOx9KuF5B9ouXi9pi85M/JFWW1bH9Ra1zl+vXNKh4lzfb/Nj8toFSfnh8TMofoWVH1uJ7KlaoOs7YMJ5DLU0yHqhY4cL+KAQaQRP7xtmPA7hCSKIcCRchjvwFlf62Q+oHTzdXwETz8fqFq9AYTD2tJCPU4fFgTzPUTMNZk7jkVbCKwry2fb0syK7q/tave9YuwrdXeuvLzltlhgvCffa3Vf8cKa/XTniEFR/jz1N68TzA+RlBBwL/H/9guJtgsFCdtM351Kxyo/yaL0PV0b59Vta91/bF9/uAZ52UgF/JZGxE2/raUpOXgniyC7PPxF/qDKUu2BZ0x2izina4YMOcHDygjvjDy3Hg/sC8DsYtLPVVlp4CvsQsUK6Qhf8mxV6ciKuNwOLSAmMXOGq5Jw7LJhrffj3cB47pjrjcFi1nEMkF7s04aJkulCE1sUtQLLoNQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(366004)(346002)(39860400002)(136003)(396003)(451199018)(41300700001)(52536014)(9686003)(186003)(8936002)(5660300002)(82960400001)(8676002)(64756008)(66446008)(66556008)(66476007)(66946007)(76116006)(122000001)(86362001)(83380400001)(7696005)(55016003)(316002)(2906002)(38100700002)(110136005)(38070700005)(26005)(6506007)(53546011)(71200400001)(33656002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K3FpR1p4bitGMGdlVmo4QmNIcnJjTlpVWXIwTGpZSEVhV1Faa0pOK1gxaS9E?=
 =?utf-8?B?VFhadnMzNWd4VmVmQUt3SFdwUkVCWXZDRzNhdkV6S3h6R0xpUzdEb2l3K2s5?=
 =?utf-8?B?SVdacnBrR2hLUVFVcnRaQWgvREw3SzNnUnd0SjlNeVVlRm5QZXlybHM1RzNC?=
 =?utf-8?B?R2lkVURXaFVRVE8rODIwOElxZHBoYVArT3hna3h5Q0cvSEpqZEh2dzBNNnlP?=
 =?utf-8?B?UUR0Y0MzOExXRUtoNS9wN2wwUktiUDFsN0htbGNjVEFsNW5xT1BOZ3poRG11?=
 =?utf-8?B?ekdvcEFWWkFTamlvOGM1MnhRb25DQ3Z5SnBWMVdWRmRWbFNWdllISDREU0JF?=
 =?utf-8?B?ZUFCRHlHNVB4MzZiNVBLK1E2UXAzbTFkelZoazRRU0VraEtZWUxHY3BjZkk3?=
 =?utf-8?B?MmxXL2gxWW5UZzQ4eEJQSXQwSVVNckZnVGxUb1pWL3VmZ1VZN0lyb2dqdERo?=
 =?utf-8?B?ZGF5a1d1M0o0YTNDbHROc0lvTTdWKzBsUGlaaGhhK0ZSSGNvN0pnZjg3Vnhn?=
 =?utf-8?B?ODA3TDB6eE9HdDRXUFhDb3hLS0hoSmZaQU1BekFQcWVkejZ0L2dMQlVJTlc1?=
 =?utf-8?B?R3dtNmpTNVhhSTEwdzVKTndTN1B6R0NLbVF5dkpRYzUwOEpQemFxR2R3SjFJ?=
 =?utf-8?B?ajI5SjI3VlZmRjFFSElwbW5IbFl2VmtVM0pYQjZYQnArcUV2UXYwN3Q0MW43?=
 =?utf-8?B?cVJuZVd5Z1plM250VFNPTGJSVGR0YnhrQy93eHJwMVBLS2ZEb0d5SXc2SlRH?=
 =?utf-8?B?ZitvOTI1WmpFQmpXZHV0WGdGeUFPdWg4Z1loZjdjTHlPWnZaenJWRUNuc0Iv?=
 =?utf-8?B?cisxMDR6dXNrWVI0a3FaS3ZPVTlHUGxGN3daYmZXekoxa1l6MWNoa1E3RVow?=
 =?utf-8?B?UzlheTMzUzNtR1diaXp2c0VnVThQUUlqazhvNzhCaGFhWjY3T0E0Zzl1eFYv?=
 =?utf-8?B?SlJ2Zzcrb3FwSmxGanlsWng0MnhKVS9ZdHo4VVdDdGdqdzRwbWNtNlJVL2pX?=
 =?utf-8?B?eVJjelUyTWFnaWc0UnlDSWs5OFRLTTQrb3NZNDM2MnpESFZ4YkNqQ0xlK09F?=
 =?utf-8?B?MmgwdGZja05QT2FhdFFHMzR3ZFBkbWRMN3Npa1cyT25HR1ZGS084c0F6VWZS?=
 =?utf-8?B?Mk92UjVIa2ZYZWNJakpvMmFJSFo5cTR4b1A5NVhJbWhnNllXS0VWQ3AreG90?=
 =?utf-8?B?T1Q5RzJKRzhEc3JEV2ZHOHNBT3h4TEdoVHA4V1VxbStXbnM3NUlPcHgvRVp3?=
 =?utf-8?B?eGVsMk9hUUFQTzVNd2ptWURjaW1acTNPK2x4cmpqQVEwbkxyOFNDTW90cmtC?=
 =?utf-8?B?emNaU2Z0OURaajRSQ1AvKzdsNlV3MVVJQ042QVpXMVdXRXpIM3F1MHEyS054?=
 =?utf-8?B?Zlorb004VTJRdkxTU21UYmRVSTczOFhaU1E5WGxmYnJxR0hXemoraEx3b0gz?=
 =?utf-8?B?QVBhdU9oSC9aMVV2aWNXay9TK2FvYkJJWTNiUE9LU0NlOGNiUWVRWWZLSXJp?=
 =?utf-8?B?aEVaY081TkhBZlBWTXBXL1FZUjcrNURlZFF2Y3Z0eCtVZUp3eS9lU2kwbFJS?=
 =?utf-8?B?WW0vakdZcHdkekRMWkY0UmtQTDR0MzNOQnJ2ejhqQ2hBQVpXb05wZVpPd1RZ?=
 =?utf-8?B?cDNuSjdyc1dpeU1rNjFCK3hWdHFpZ2FQVlJVRm5VTStuWnBFdHhYcTFRMGJm?=
 =?utf-8?B?U0k4R3pVdWJvbW9FVzZyTzdPbnJIbStXWHJnWk9haFFrL2NQaWVrd2JpajFy?=
 =?utf-8?B?anBHQWNIMkg4R1VlUTJwNFVmQjExMC96Qzd4UmNvRUFQanZCcERqb3lkaDVl?=
 =?utf-8?B?SXpVV1QyWTR5OGs1WlE5SUhxVzRJL3d5MVhnamVMTEJXZ3ZzOFhXSFh5SkFn?=
 =?utf-8?B?blQxVGllTHEvaHVYQ3kybmU1cXVhbHVlSjdoeW5kRzBsV0JDYXI0aUV3WkFV?=
 =?utf-8?B?WXoxT0FJUDlWd0FYZHI4M2ZUaTF3UDUxQjlEdG1SVnJDWXR4empUa0dHTVFH?=
 =?utf-8?B?alJmdDd2TklaTTZNbGFvbkM0T0RmWkhKbjlHd2xLYlVJNGtLZFZ6a01DL3pT?=
 =?utf-8?B?eGRUejZjbm91R0d1Mk9ZM0dwK1htZ2c5UXhHZFk5WTd5WDU2aDZZbm5kK2Nt?=
 =?utf-8?Q?Iu6u1Nw2OUHSJ8eM0n8Vs5P3n?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fa1d7c8-170c-44b3-d367-08db2c4ceed4
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2023 09:48:33.8961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b52VU4ljMM9vjpczIL4QNTz3tbKZ1SO7qqiPZxOLyuspvSn50lWN3KW/L2LZ8fNJKfXVgYwM/a6O82vZXhkaQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8222
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 03/29] drm/i915/tc: Rename
 tc_phy_status_complete() to tc_phy_is_ready()
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMCBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MDMvMjldIGRybS9pOTE1L3RjOiBSZW5hbWUNCj4gdGNfcGh5X3N0YXR1c19jb21wbGV0ZSgpIHRv
IHRjX3BoeV9pc19yZWFkeSgpDQo+IA0KPiBGb3IgY29uc2lzdGVuY3kgcmVuYW1lIHRjX3BoeV9z
dGF0dXNfY29tcGxldGUoKSB0byB0Y19waHlfaXNfcmVhZHkoKQ0KPiBmb2xsb3dpbmcgdGhlIHRl
cm1pbm9sb2d5IG9mIG5ldyBwbGF0Zm9ybXMuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhv
bGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsg
PGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5jIHwgMjQgKysrKysrKysrKysrLS0tLS0tLS0tLS0tDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IGluZGV4IDA5OWIxZWM4NDJiYTIu
LjlmZWNmMjRiNjljMTYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmMNCj4gQEAgLTE2LDcgKzE2LDcgQEANCj4gICNpbmNsdWRlICJpbnRlbF90Yy5oIg0KPiAN
Cj4gIHN0YXRpYyB1MzIgdGNfcG9ydF9saXZlX3N0YXR1c19tYXNrKHN0cnVjdCBpbnRlbF9kaWdp
dGFsX3BvcnQgKmRpZ19wb3J0KTsgLXN0YXRpYw0KPiBib29sIHRjX3BoeV9zdGF0dXNfY29tcGxl
dGUoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOw0KPiArc3RhdGljIGJvb2wg
dGNfcGh5X2lzX3JlYWR5KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsNCj4g
IHN0YXRpYyBib29sIHRjX3BoeV90YWtlX293bmVyc2hpcChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0ICpkaWdfcG9ydCwgYm9vbA0KPiB0YWtlKTsNCj4gDQo+ICBzdGF0aWMgY29uc3QgY2hhciAq
dGNfcG9ydF9tb2RlX25hbWUoZW51bSB0Y19wb3J0X21vZGUgbW9kZSkgQEAgLTMwMyw3DQo+ICsz
MDMsNyBAQCBzdGF0aWMgdTMyIGljbF90Y19wb3J0X2xpdmVfc3RhdHVzX21hc2soc3RydWN0IGlu
dGVsX2RpZ2l0YWxfcG9ydA0KPiAqZGlnX3BvcnQpDQo+ICAgKiBvd25lZCBieSB0aGUgVEJUIHN1
YnN5c3RlbSBhbmQgc28gc3dpdGNoaW5nIHRoZSBvd25lcnNoaXAgdG8gZGlzcGxheSBpcyBub3QN
Cj4gICAqIHJlcXVpcmVkLg0KPiAgICovDQo+IC1zdGF0aWMgYm9vbCBpY2xfdGNfcGh5X3N0YXR1
c19jb21wbGV0ZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gK3N0YXRp
YyBib29sIGljbF90Y19waHlfaXNfcmVhZHkoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGln
X3BvcnQpDQo+ICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1
KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsNCj4gIAl1MzIgdmFsOw0KPiBAQCAtMzExLDcgKzMx
MSw3IEBAIHN0YXRpYyBib29sIGljbF90Y19waHlfc3RhdHVzX2NvbXBsZXRlKHN0cnVjdA0KPiBp
bnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiAgCXZhbCA9IGludGVsX2RlX3JlYWQoaTkx
NSwgUE9SVF9UWF9ERkxFWERQUE1TKGRpZ19wb3J0LQ0KPiA+dGNfcGh5X2ZpYSkpOw0KPiAgCWlm
ICh2YWwgPT0gMHhmZmZmZmZmZikgew0KPiAgCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLA0KPiAt
CQkJICAgICJQb3J0ICVzOiBQSFkgaW4gVENDT0xELCBhc3N1bWluZyBub3QgY29tcGxldGVcbiIs
DQo+ICsJCQkgICAgIlBvcnQgJXM6IFBIWSBpbiBUQ0NPTEQsIGFzc3VtaW5nIG5vdCByZWFkeVxu
IiwNCj4gIAkJCSAgICBkaWdfcG9ydC0+dGNfcG9ydF9uYW1lKTsNCj4gIAkJcmV0dXJuIGZhbHNl
Ow0KPiAgCX0NCj4gQEAgLTM3Nyw3ICszNzcsNyBAQCBzdGF0aWMgdm9pZCBpY2xfdGNfcGh5X2Nv
bm5lY3Qoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiAqZGlnX3BvcnQsDQo+ICAJdTMyIGxp
dmVfc3RhdHVzX21hc2s7DQo+ICAJaW50IG1heF9sYW5lczsNCj4gDQo+IC0JaWYgKCF0Y19waHlf
c3RhdHVzX2NvbXBsZXRlKGRpZ19wb3J0KSAmJg0KPiArCWlmICghdGNfcGh5X2lzX3JlYWR5KGRp
Z19wb3J0KSAmJg0KPiAgCSAgICAhZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgZGlnX3BvcnQtPnRj
X2xlZ2FjeV9wb3J0KSkgew0KPiAgCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiUG9ydCAlczog
UEhZIG5vdCByZWFkeVxuIiwNCj4gIAkJCSAgICBkaWdfcG9ydC0+dGNfcG9ydF9uYW1lKTsNCj4g
QEAgLTQ5Miw3ICs0OTIsNyBAQCBzdGF0aWMgdTMyIGFkbHBfdGNfcG9ydF9saXZlX3N0YXR1c19t
YXNrKHN0cnVjdA0KPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiAgICogRFAtYWx0
LCBsZWdhY3kgb3Igbm90aGluZykuIEZvciBUQlQtYWx0IHNpbmtzIHRoZSBQSFkgaXMgb3duZWQg
YnkgdGhlIFRCVA0KPiAgICogc3Vic3lzdGVtIGFuZCBzbyBzd2l0Y2hpbmcgdGhlIG93bmVyc2hp
cCB0byBkaXNwbGF5IGlzIG5vdCByZXF1aXJlZC4NCj4gICAqLw0KPiAtc3RhdGljIGJvb2wgYWRs
cF90Y19waHlfc3RhdHVzX2NvbXBsZXRlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19w
b3J0KQ0KPiArc3RhdGljIGJvb2wgYWRscF90Y19waHlfaXNfcmVhZHkoc3RydWN0IGludGVsX2Rp
Z2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsNCj4gIAllbnVtIHRjX3Bv
cnQgdGNfcG9ydCA9IGludGVsX3BvcnRfdG9fdGMoaTkxNSwgZGlnX3BvcnQtPmJhc2UucG9ydCk7
DQo+IEBAIC01MDEsNyArNTAxLDcgQEAgc3RhdGljIGJvb2wgYWRscF90Y19waHlfc3RhdHVzX2Nv
bXBsZXRlKHN0cnVjdA0KPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiAgCXZhbCA9
IGludGVsX2RlX3JlYWQoaTkxNSwgVENTU19ERElfU1RBVFVTKHRjX3BvcnQpKTsNCj4gIAlpZiAo
dmFsID09IDB4ZmZmZmZmZmYpIHsNCj4gIAkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gLQkJ
CSAgICAiUG9ydCAlczogUEhZIGluIFRDQ09MRCwgYXNzdW1pbmcgbm90IGNvbXBsZXRlXG4iLA0K
PiArCQkJICAgICJQb3J0ICVzOiBQSFkgaW4gVENDT0xELCBhc3N1bWluZyBub3QgcmVhZHlcbiIs
DQo+ICAJCQkgICAgZGlnX3BvcnQtPnRjX3BvcnRfbmFtZSk7DQo+ICAJCXJldHVybiBmYWxzZTsN
Cj4gIAl9DQo+IEBAIC01NDUsMTQgKzU0NSwxNCBAQCBzdGF0aWMgdTMyIHRjX3BvcnRfbGl2ZV9z
dGF0dXNfbWFzayhzdHJ1Y3QNCj4gaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gIAly
ZXR1cm4gaWNsX3RjX3BvcnRfbGl2ZV9zdGF0dXNfbWFzayhkaWdfcG9ydCk7DQo+ICB9DQo+IA0K
PiAtc3RhdGljIGJvb2wgdGNfcGh5X3N0YXR1c19jb21wbGV0ZShzdHJ1Y3QgaW50ZWxfZGlnaXRh
bF9wb3J0ICpkaWdfcG9ydCkNCj4gK3N0YXRpYyBib29sIHRjX3BoeV9pc19yZWFkeShzdHJ1Y3Qg
aW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOw0KPiANCj4g
IAlpZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkpDQo+IC0JCXJldHVybiBhZGxwX3RjX3BoeV9zdGF0
dXNfY29tcGxldGUoZGlnX3BvcnQpOw0KPiArCQlyZXR1cm4gYWRscF90Y19waHlfaXNfcmVhZHko
ZGlnX3BvcnQpOw0KPiANCj4gLQlyZXR1cm4gaWNsX3RjX3BoeV9zdGF0dXNfY29tcGxldGUoZGln
X3BvcnQpOw0KPiArCXJldHVybiBpY2xfdGNfcGh5X2lzX3JlYWR5KGRpZ19wb3J0KTsNCj4gIH0N
Cj4gDQo+ICBzdGF0aWMgYm9vbCB0Y19waHlfaXNfb3duZWQoc3RydWN0IGludGVsX2RpZ2l0YWxf
cG9ydCAqZGlnX3BvcnQpIEBAIC01OTAsNw0KPiArNTkwLDcgQEAgc3RhdGljIGJvb2wgdGNfcGh5
X2lzX2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwNCj4gew0K
PiAgCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyID0gJmRpZ19wb3J0LT5iYXNlOw0KPiAg
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRl
dik7DQo+IC0JYm9vbCBwaHlfaXNfcmVhZHkgPSB0Y19waHlfc3RhdHVzX2NvbXBsZXRlKGRpZ19w
b3J0KTsNCj4gKwlib29sIHBoeV9pc19yZWFkeSA9IHRjX3BoeV9pc19yZWFkeShkaWdfcG9ydCk7
DQo+ICAJYm9vbCBwaHlfaXNfb3duZWQgPSB0Y19waHlfaXNfb3duZWQoZGlnX3BvcnQpOw0KPiAg
CWJvb2wgaXNfY29ubmVjdGVkOw0KPiANCj4gQEAgLTYxNCw3ICs2MTQsNyBAQCBzdGF0aWMgdm9p
ZCB0Y19waHlfd2FpdF9mb3JfcmVhZHkoc3RydWN0DQo+IGludGVsX2RpZ2l0YWxfcG9ydCAqZGln
X3BvcnQpICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRp
Z19wb3J0LT5iYXNlLmJhc2UuZGV2KTsNCj4gDQo+IC0JaWYgKHdhaXRfZm9yKHRjX3BoeV9zdGF0
dXNfY29tcGxldGUoZGlnX3BvcnQpLCAxMDApKQ0KPiArCWlmICh3YWl0X2Zvcih0Y19waHlfaXNf
cmVhZHkoZGlnX3BvcnQpLCAxMDApKQ0KPiAgCQlkcm1fZXJyKCZpOTE1LT5kcm0sICJQb3J0ICVz
OiB0aW1lb3V0IHdhaXRpbmcgZm9yIFBIWQ0KPiByZWFkeVxuIiwNCj4gIAkJCWRpZ19wb3J0LT50
Y19wb3J0X25hbWUpOw0KPiAgfQ0KPiBAQCAtNjk0LDcgKzY5NCw3IEBAIGludGVsX3RjX3BvcnRf
Z2V0X2N1cnJlbnRfbW9kZShzdHJ1Y3QNCj4gaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkN
Cj4gIAlpZiAoZGlnX3BvcnQtPnRjX2xlZ2FjeV9wb3J0KQ0KPiAgCQl0Y19waHlfd2FpdF9mb3Jf
cmVhZHkoZGlnX3BvcnQpOw0KPiANCj4gLQlwaHlfaXNfcmVhZHkgPSB0Y19waHlfc3RhdHVzX2Nv
bXBsZXRlKGRpZ19wb3J0KTsNCj4gKwlwaHlfaXNfcmVhZHkgPSB0Y19waHlfaXNfcmVhZHkoZGln
X3BvcnQpOw0KPiAgCXBoeV9pc19vd25lZCA9IHRjX3BoeV9pc19vd25lZChkaWdfcG9ydCk7DQo+
IA0KPiAgCWlmICghdGNfcGh5X2lzX3JlYWR5X2FuZF9vd25lZChkaWdfcG9ydCwgcGh5X2lzX3Jl
YWR5LA0KPiBwaHlfaXNfb3duZWQpKSB7DQo+IC0tDQo+IDIuMzcuMQ0KDQo=
