Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E21369F15D
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 10:26:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EADE10E432;
	Wed, 22 Feb 2023 09:26:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E41B10E42E
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 09:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677057968; x=1708593968;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Q+NEiMr30PXo87CSgxyc6yUCXCFkMlX92EOh/LlObU4=;
 b=dOrCcg7o+RRE0A9Hs4hGUjN0BQH0gsT7apKb/fCYOzaBTUVKSrgwNUx1
 ZJzP2jSGkTRQeGw1I0ycD+OMBXi2EDAhkBNP566puOolM13OWpnjPjzT7
 L/sXE0tPnONhJxF9Yn2H3eE9HSfUMRTcTvbIXrHZLmJLRHfQRws7e6S8p
 qveBZ8ridcvLi47DG/L0PsIV8Mm3xKaQjaXGRrM27I3vDVxuXQcY3T2+N
 dWBhYPykJCTT1NpqMlqgdwcrIKX/aZUYTKrSavhoYpu1AgnHmka8P7edy
 II1Z3AAcxGcUmp5iRC5hljtBR7naqH+3smxRCilIFuqd/h8mXkZqQKRAj A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="321019571"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="321019571"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 01:26:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="621843591"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="621843591"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 22 Feb 2023 01:25:59 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 01:25:59 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 01:25:58 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 22 Feb 2023 01:25:58 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 22 Feb 2023 01:25:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fqBg0CkSIuiK4s+3FlGL363cigXT7lhATnkR/5AqBGn/SojJend3KYX3npnrYm5XF2gVuX7D2wqNezBv+j59kwCLhnWtX8XsaTDGMvhTWVNiuohWojy2rYaVyPcAVhtxK3sbxEseKo5UG6mEe/N3PQcwQwy9TgP/Vg/q0tdEFgT4NpV5hN9QYjZOMUhrtk4l/LEz5Ytp82MdK3Qgj/OA5vMITsR9djg8TlQuuSwyJXwAdvwlC/X4iv2uOaMKPooVH48gYI5ZTtbdTW8RMLRbGQHimYzEQM97cA4DB7UeGiKb65XuGOnHbnhInvgLIV08Ti+6PtzxEQ4mMymwSHq0Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q+NEiMr30PXo87CSgxyc6yUCXCFkMlX92EOh/LlObU4=;
 b=AkAhiCGkEuoCfbrEkNOFI5n3OVyGfiiQQunl4cFw5Tbj4ouifnLS+61Na5hWiHu0nX1EnEQ3QfaBVDoV9ffX7tAG02XGdJgIixXSzG6HO6b2wHSXo6oLMqp6CLPl3aE+O87cIAB8EfM1GH/mqylC1/WCceOrplvMgAkaHsnvegqFnohNWX6rrQTwgwRjlqt2Yvz0IAjEoD1g0Us/ndQmWx3nf4aR44GzZqqoE6UP3Py4FzxxmW8rMlrxPcOJ8NUwhtFcWXc3oB1CmGYBlSSII8DHNcCLt84t+bHGJPKmL48z6rMUnvjELCV2NNR91QCunN5dvDjnIhJijKpQPJkcpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB7049.namprd11.prod.outlook.com (2603:10b6:510:20c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.21; Wed, 22 Feb
 2023 09:25:56 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6723:483:53a2:5569]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6723:483:53a2:5569%6]) with mapi id 15.20.6134.019; Wed, 22 Feb 2023
 09:25:56 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 3/4] drm/i915: Extract skl_wm_latency()
Thread-Index: AQHZMnUsH7iKH78vSE2IGQWXiwgYEa7a2mmA
Date: Wed, 22 Feb 2023 09:25:56 +0000
Message-ID: <139c6f3e968277b1ca83aa4e2aaf3eb80f11c215.camel@intel.com>
References: <20230127173044.24108-1-ville.syrjala@linux.intel.com>
 <20230127173044.24108-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20230127173044.24108-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB7049:EE_
x-ms-office365-filtering-correlation-id: 34a74007-5c96-4ee8-b57d-08db14b6cd42
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aXMRa8Y5ucnDM8FuXpzdrFEaTGngAayYWXz2cY8NSyNRAH8htNkOdnzj7se8Faghe47fp3vfrWtG9g+DcrGQc9KPhgKwaPk9H0d+UewjCL6f/m8hrn+VhSup82mpyZtufyXRvdDYxtymwyIDKUD9+ByqYUNAhf5yQchSOMebNAhwxrFqp5KcHIp+78S80aUSFUIL3X7TujkXyyDs8alh7jCu8AZGu1BUhopOm9WbM7aN1UzI1h7JgY41QVEk31fwgnn2QccedV2SrRkNXwZPnOEh7Ld7PyY/krNAKDV8RClFjt2tVS+CEgv/Ryk9lj8fNVRZXMRRfO2gZy3DE5qvyqr2ZEYHQT6Xz3K4bw0NAp+kmk9KmbX4ExjpKcGG0txjf7OiD1/Cm1eB2LXqeZ6Re2U0OcZaTE9N2Jrd5K5vE3uTTiq7I2uboCpg94lLPWP/iduCnQyB5Ej5yk02Goqc8hZR6sEs5BN+S/UokiRs0dC6/OpM0U2Awt/h5w+LZAUNr+t7Qvemb/s/7goGKkiISEuayOfKHHNn8ELgTaIY8NsHxJo7dOJMAG0HbueRSOVKpPRisVeqn6Z0okorPFXXYVINA+H5DHMRNLYZ/xGSIG+N5fy7RBUnM6/gm3pCqjyNzLbAU4rg9Upa4pYGq/Y+0NpLOh6M/vkBw/V9ytgCfswztS3tLfrltY9S26mn97nlEq9IlGB17k6miBYrmJ7WcA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(396003)(346002)(366004)(136003)(376002)(451199018)(5660300002)(41300700001)(8936002)(86362001)(83380400001)(122000001)(478600001)(110136005)(2616005)(38100700002)(82960400001)(2906002)(6486002)(6506007)(66556008)(91956017)(38070700005)(8676002)(66446008)(66476007)(71200400001)(66946007)(76116006)(26005)(66574015)(316002)(6512007)(36756003)(64756008)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dXNTQVBZTUlBSkNyeGUvb21PSkRtS0N6c3VBcEJHVlpkalVVMDFWcVJmS0s0?=
 =?utf-8?B?Y1pJdzQ5aGp1UTlaN2NPQ0lKdVhna3lCNGZhZG15NTAwUEZQSWx5ZWRTNnky?=
 =?utf-8?B?OUhSSTYxNHZieDJWRW9MOFhVRE5mVnkrWjJpZVZCNTZmZ2FxTUlyQis3bEoy?=
 =?utf-8?B?ZURMeWZleEluT0xYb2s0NHZTVzN0K3grMzI3NjErUUtiWEkwZlZ2WWVGdWxR?=
 =?utf-8?B?VnlkdXM0bkpxNVkySlN0QmdneWtvK1c1ejJIUlBLTFRTK0tLZXlGc21mcnhx?=
 =?utf-8?B?aFc5WkRyaWVYdk9ybGxzNDYyZHlrQjRkcENycTFLb0E5REhlVGU3OFFNRlJ2?=
 =?utf-8?B?QWpoYnJrai9mUUJiblpHSCtBMzNaNEhzYjdsdCtOUHZrZnU0bUZnL3RpTGNK?=
 =?utf-8?B?dG9OZ1JsZkFVK3pWNkQxby8xdnlETUdVNCtnelI3SGJPKzBMRDd6STZFNEFB?=
 =?utf-8?B?Y0piSmI2TGc1dzVlcUNkYjhCSnd6UUlpeXJocE5HeGQ0bE9nOVMzdWszT29m?=
 =?utf-8?B?MjFXLzZhQTVVaE9MOTU0VDIybTJwbDRmc2NpdkE1akZLd3JNNmY5Z0krd1hZ?=
 =?utf-8?B?WXU1eG9BaEEyeTJKTS9MSWVBcUhDbHFhZVZ1eEN3SzhZQzQ0SE52UTNqdlhl?=
 =?utf-8?B?Q08xQjdMSGJ4QzZmMmtXSEF2SzdYSG1jMWtOMmlycDdMd2dhaEU1djBIb0ZV?=
 =?utf-8?B?dFNSTVNmemhyMmZBRnZMcDlWOHdOR2hUVDlXamttRlZEeE56VVJFb1h3dXRV?=
 =?utf-8?B?bUVMckVFek5tS0ZOelVFOHMzWVNTSjlvVzFwdHBXdzhlZHMvcDVGdE5obGZ5?=
 =?utf-8?B?d2Zrc045TVdXd1I5Mk9JcWdSdDluYkhJc3V1OG1BNnJDcEpHOHhINDF5MzZ3?=
 =?utf-8?B?NncyZE9iYXZqYWh2RmhKRGdJWlNBaytLdXdiWEhYREcrU2RrRzBjMnMvNGRt?=
 =?utf-8?B?TzlON2RHOGlqN1lrNzRkdVkwaGpPVURIUFNPblQzME5Ud20rZnROUU9yUzZr?=
 =?utf-8?B?akRjLzNQVGxURDZ3TlJNQXVoT09Wcm5lbTlBSTgxZk81N3RsNERvUDNPbzlz?=
 =?utf-8?B?QllscGhsYTRSVWk2Q1h2am1ZdFFGMjF2NXl4WndzbG5yMTUxbzhHTnVBTFA1?=
 =?utf-8?B?RXFYdGljTVhFZmNYZzRhZ3M1T1hTMlNmVjdxUFhPaitIVHh5dG1qUGdYV2VJ?=
 =?utf-8?B?czlSRVhSdlYyclRrZ3lTZW9BUklLUXNPZFQwN09oWnVCbWJFUEFOeXRIRUFT?=
 =?utf-8?B?UjJSKzZoVDFkNnovK2F1Z0ZoaWorK0k1cE54bTlFSzIwWVE5WEZJSGZsQXZ5?=
 =?utf-8?B?M3FidHdvK012RVc3V1NVaThQTE9IdlZNMjA4MWRDR2Jkckd3Sm43b3U4L01s?=
 =?utf-8?B?YW1uMVBBRTVCd0ZoMjY1TjZPL3d2cVdha1RZSkhXcW45d0FJYnVCSStrM0xE?=
 =?utf-8?B?TEFWT1NXanBJWW41ZCtGWnJOWWpMZ3ZhRnM2N1hNRFNqaHBwSzdIL3RaYWRQ?=
 =?utf-8?B?akV6THNwZHEwekIzNm1oN1BvRnRRWXo0RytibGtTVWM5dWduWUtkZ2dmOFlo?=
 =?utf-8?B?c2lyaTJYRjM1LzJXT0RjMmFuMS9oa0tIY1JTS3YvVktHU0p5VE1xbGF0OGpa?=
 =?utf-8?B?U2E0K3lKYmZBOFZ0T1FMSjA1L1JjbzJ0T0NWMlo5Kzhjb0xrR0pOQ2xtNUJI?=
 =?utf-8?B?VE5ZdFBPL1dLZnE0ckFQUEVnVXBocmc2L20wV1d0SGprNmloTUVsQ0tVVGlY?=
 =?utf-8?B?VE42Q3JpZFBYRTVnK1dwSksrSWZkT3hBWGlva256dnpkU3hGTlQ0VUtqTXNk?=
 =?utf-8?B?UmpyN1pkQktCZm9wNmM5OE1RbmNpSmpSVXlOVElvT2dOQUZlTFg5Y0FhU3E3?=
 =?utf-8?B?d09CMXc3Ymg1V2ZtenZ5MkYzRE9IYStVZWRqZ2ZPVWZmYlNjam0wL2dBbjVB?=
 =?utf-8?B?RU0xR1pDck1uVE1EQ29UWVpDQjlHbGZDaFdYd293MGxxaG5DZ1FhbTY0NXJE?=
 =?utf-8?B?bXRacmNYeXI3M3RUTUlhSkhDaVN6bmpwK1Zlako0WUw0Rm1zTWdSWk14UVNR?=
 =?utf-8?B?U3RqZkcrR2JDTytjNmdKaDFSS3dlTmdNUVAwTjRUVTFNNyt6YzRBWnk4VEhN?=
 =?utf-8?B?SU9RS0V4aG5kakU3U0s2eGU0V1p3OFJUakhhdEZ3dW8vNldvVUlOV3BpL1Uw?=
 =?utf-8?B?QXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <862BDB47BBCE1F4C8138871A0D9D15A8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34a74007-5c96-4ee8-b57d-08db14b6cd42
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2023 09:25:56.2736 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AlTDy9VvU6zcnixiuwkabMiPzf7RqLnu9gkySI0jrzNKlTYSxLdPXUylmRPkYM2ziEe6VjdpT+2A0Vm6rJJzQh+hitQLp1vAJxLYnLjvqzc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7049
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915: Extract skl_wm_latency()
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

T24gRnJpLCAyMDIzLTAxLTI3IGF0IDE5OjMwICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gRXh0cmFjdCB0aGUgc2tsKyB3bSBsYXRlbmN5IGRldGVybWluYXRpb24gaW50byBhIHNtYWxs
IGhlbHBlcgo+IHNvIHRoYXQgZXZlcnlvbmUgaGFzIHRoZSBzYW1lIGlkZWEgd2hhdCB0aGUgbGF0
ZW5jeSBzaG91bGQgYmUuCj4gCj4gVGhpcyBpbnRyb2R1Y2VzIGEgc2xpZ2h0IGZ1bmN0aW9uYWwg
Y2hhbmdlIGluIHRoYXQKPiBza2xfY3Vyc29yX2FsbG9jYXRpb24oKSB3aWxsIG5vdyBzdGFydCB0
byBhY2NvdW50IGZvciB0aGUKPiBleHRyYSA0IHVzZWMgdGhhdCB0aGUga2JrL2NmbC9jbWwgSVBD
IHcvYSBhZGRzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L3NrbF93YXRlcm1hcmsuYyB8IDQwICsrKysrKysrKysrKystLS0tLQo+IC0tCj4gwqAxIGZp
bGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYwo+IGluZGV4IGFlNGU5
ZTY4MGMyZS4uNjVjNzQ2ZDAxOGI1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfd2F0ZXJtYXJrLmMKPiBAQCAtNzA0LDYgKzcwNCwyOCBAQCBzdGF0aWMgdm9pZCBz
a2xfY29tcHV0ZV9wbGFuZV93bShjb25zdCBzdHJ1Y3QKPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IHNrbF93bV9sZXZlbAo+ICpyZXN1bHRfcHJl
diwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHN0cnVjdCBza2xfd21fbGV2ZWwgKnJlc3VsdCAvKiBvdXQKPiAqLyk7Cj4g
wqAKPiArc3RhdGljIHVuc2lnbmVkIGludCBza2xfd21fbGF0ZW5jeShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwKPiBpbnQgbGV2ZWwsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3Qgc2ts
X3dtX3BhcmFtcyAqd3ApCj4gK3sKPiArwqDCoMKgwqDCoMKgwqB1bnNpZ25lZCBpbnQgbGF0ZW5j
eSA9IGk5MTUtPmRpc3BsYXkud20uc2tsX2xhdGVuY3lbbGV2ZWxdOwo+ICsKPiArwqDCoMKgwqDC
oMKgwqBpZiAobGF0ZW5jeSA9PSAwKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gMDsKCldoYXQgZG9lcyBpdCBtZWFuIGlmIGxhdGVuY3kgaXMgMCBoZXJlPyBXaHkgaXQg
aXMgb2sgdG8gc2tpcCBjaGVja3MgZm9yCmlwY19lbmFibGVkIGFuZCBtZW1vcnkgYmFuZHdpZHRo
IHdvcmthcm91bmQ/Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoC8qCj4gK8KgwqDCoMKgwqDCoMKgICog
V2FJbmNyZWFzZUxhdGVuY3lJUENFbmFibGVkOiBrYmwsY2ZsCj4gK8KgwqDCoMKgwqDCoMKgICog
RGlzcGxheSBXQSAjMTE0MToga2JsLGNmbAo+ICvCoMKgwqDCoMKgwqDCoCAqLwo+ICvCoMKgwqDC
oMKgwqDCoGlmICgoSVNfS0FCWUxBS0UoaTkxNSkgfHwgSVNfQ09GRkVFTEFLRShpOTE1KSB8fAo+
IElTX0NPTUVUTEFLRShpOTE1KSkgJiYKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2tsX3dhdGVy
bWFya19pcGNfZW5hYmxlZChpOTE1KSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
bGF0ZW5jeSArPSA0Owo+ICsKPiArwqDCoMKgwqDCoMKgwqBpZiAoc2tsX25lZWRzX21lbW9yeV9i
d193YShpOTE1KSAmJiB3cC0+eF90aWxlZCkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgbGF0ZW5jeSArPSAxNTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIGxhdGVuY3k7Cj4g
K30KPiArCj4gwqBzdGF0aWMgdW5zaWduZWQgaW50Cj4gwqBza2xfY3Vyc29yX2FsbG9jYXRpb24o
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludCBudW1fYWN0aXZlKQo+IEBAIC03MjMs
NyArNzQ1LDcgQEAgc2tsX2N1cnNvcl9hbGxvY2F0aW9uKGNvbnN0IHN0cnVjdAo+IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gwqDCoMKgwqDCoMKgwqDCoGRybV9XQVJOX09OKCZpOTE1
LT5kcm0sIHJldCk7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgZm9yIChsZXZlbCA9IDA7IGxldmVs
IDw9IG1heF9sZXZlbDsgbGV2ZWwrKykgewo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqB1bnNpZ25lZCBpbnQgbGF0ZW5jeSA9IGk5MTUtCj4gPmRpc3BsYXkud20uc2tsX2xhdGVuY3lb
bGV2ZWxdOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1bnNpZ25lZCBpbnQgbGF0
ZW5jeSA9IHNrbF93bV9sYXRlbmN5KGk5MTUsIGxldmVsLAo+ICZ3cCk7Cj4gwqAKPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNrbF9jb21wdXRlX3BsYW5lX3dtKGNydGNfc3RhdGUs
IHBsYW5lLCBsZXZlbCwKPiBsYXRlbmN5LCAmd3AsICZ3bSwgJndtKTsKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGlmICh3bS5taW5fZGRiX2FsbG9jID09IFUxNl9NQVgpCj4gQEAg
LTE4MzQsMTcgKzE4NTYsNiBAQCBzdGF0aWMgdm9pZCBza2xfY29tcHV0ZV9wbGFuZV93bShjb25z
dCBzdHJ1Y3QKPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOwo+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiAtwqDC
oMKgwqDCoMKgwqAvKgo+IC3CoMKgwqDCoMKgwqDCoCAqIFdhSW5jcmVhc2VMYXRlbmN5SVBDRW5h
YmxlZDoga2JsLGNmbAo+IC3CoMKgwqDCoMKgwqDCoCAqIERpc3BsYXkgV0EgIzExNDE6IGtibCxj
ZmwKPiAtwqDCoMKgwqDCoMKgwqAgKi8KPiAtwqDCoMKgwqDCoMKgwqBpZiAoKElTX0tBQllMQUtF
KGk5MTUpIHx8IElTX0NPRkZFRUxBS0UoaTkxNSkgfHwKPiBJU19DT01FVExBS0UoaTkxNSkpICYm
Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgIHNrbF93YXRlcm1hcmtfaXBjX2VuYWJsZWQoaTkxNSkp
Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxhdGVuY3kgKz0gNDsKPiAtCj4gLcKg
wqDCoMKgwqDCoMKgaWYgKHNrbF9uZWVkc19tZW1vcnlfYndfd2EoaTkxNSkgJiYgd3AtPnhfdGls
ZWQpCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxhdGVuY3kgKz0gMTU7Cj4gLQo+
IMKgwqDCoMKgwqDCoMKgwqBtZXRob2QxID0gc2tsX3dtX21ldGhvZDEoaTkxNSwgd3AtPnBsYW5l
X3BpeGVsX3JhdGUsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB3cC0+Y3BwLCBsYXRlbmN5LCB3cC0KPiA+ZGJ1Zl9ibG9j
a19zaXplKTsKPiDCoMKgwqDCoMKgwqDCoMKgbWV0aG9kMiA9IHNrbF93bV9tZXRob2QyKHdwLT5w
bGFuZV9waXhlbF9yYXRlLAo+IEBAIC0xOTcxLDcgKzE5ODIsNyBAQCBza2xfY29tcHV0ZV93bV9s
ZXZlbHMoY29uc3Qgc3RydWN0Cj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiDCoAo+
IMKgwqDCoMKgwqDCoMKgwqBmb3IgKGxldmVsID0gMDsgbGV2ZWwgPD0gbWF4X2xldmVsOyBsZXZl
bCsrKSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qgc2tsX3dtX2xl
dmVsICpyZXN1bHQgPSAmbGV2ZWxzW2xldmVsXTsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgdW5zaWduZWQgaW50IGxhdGVuY3kgPSBpOTE1LQo+ID5kaXNwbGF5LndtLnNrbF9sYXRl
bmN5W2xldmVsXTsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdW5zaWduZWQgaW50
IGxhdGVuY3kgPSBza2xfd21fbGF0ZW5jeShpOTE1LCBsZXZlbCwKPiB3bV9wYXJhbXMpOwo+IMKg
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBza2xfY29tcHV0ZV9wbGFuZV93bShj
cnRjX3N0YXRlLCBwbGFuZSwgbGV2ZWwsCj4gbGF0ZW5jeSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgd21f
cGFyYW1zLCByZXN1bHRfcHJldiwgcmVzdWx0KTsKPiBAQCAtMTk5MSw3ICsyMDAyLDggQEAgc3Rh
dGljIHZvaWQgdGdsX2NvbXB1dGVfc2Fndl93bShjb25zdCBzdHJ1Y3QKPiBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlLAo+IMKgwqDCoMKgwqDCoMKgwqB1bnNpZ25lZCBpbnQgbGF0ZW5jeSA9
IDA7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGk5MTUtPmRpc3BsYXkuc2Fndi5ibG9ja190
aW1lX3VzKQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsYXRlbmN5ID0gaTkxNS0+
ZGlzcGxheS5zYWd2LmJsb2NrX3RpbWVfdXMgKyBpOTE1LQo+ID5kaXNwbGF5LndtLnNrbF9sYXRl
bmN5WzBdOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsYXRlbmN5ID0gaTkxNS0+
ZGlzcGxheS5zYWd2LmJsb2NrX3RpbWVfdXMgKwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgc2tsX3dtX2xhdGVuY3koaTkxNSwgMCwgd21fcGFyYW1zKTsK
PiDCoAo+IMKgwqDCoMKgwqDCoMKgwqBza2xfY29tcHV0ZV9wbGFuZV93bShjcnRjX3N0YXRlLCBw
bGFuZSwgMCwgbGF0ZW5jeSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB3bV9wYXJhbXMsICZsZXZlbHNbMF0sCgo=
