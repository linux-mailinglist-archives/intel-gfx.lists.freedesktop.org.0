Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E4E47E7D4
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Dec 2021 19:54:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDE5310E3E1;
	Thu, 23 Dec 2021 18:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68CA510E372
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Dec 2021 18:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640285676; x=1671821676;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=hXyefz9ioCABFj+ynOvhsp13KKFFZBXS/1GJSezhNMk=;
 b=YbtjOsEfIO3xvu+XvMqC7t4fKzzZXIOHi/hLdPebsxUkzKzHfkhvrUsO
 qTOLnd9zFi4AO/UlzruEIOPkb6qIs8IebcK43RmQRhb0X5hiEMet0mNKw
 4277F3OSU4RdB0KzztvwsJNCnxfB/CtVplHpcyW05dmyjxgomf1o8CJOZ
 Lr+2IP1ELgfTU6H78zmstpPtK2scC80vT/omN0rEZWz3hBkb+H2zZJDZh
 ddQw0B8AwQ7p3mvx/L5OPTE+9GLRY+WTcciwXk7/op6OsQoryqnXK5QEn
 rpXl7fJapDrkzys+BZWgUtJCtRAg/Ir6GkO3t6UhkKxBlSnK8Hhq1Hm9k w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10207"; a="327188488"
X-IronPort-AV: E=Sophos;i="5.88,230,1635231600"; d="scan'208";a="327188488"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2021 10:54:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,230,1635231600"; d="scan'208";a="522539419"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 23 Dec 2021 10:54:35 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 23 Dec 2021 10:54:35 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 23 Dec 2021 10:54:35 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 23 Dec 2021 10:54:35 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 23 Dec 2021 10:54:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OiBTusJRbGy99/Uz9eJggYH/+/7/3YlsgykQ4LufiJoJrHDMmM4ClJnRtQULU1x4KUYPnWGQ8pcsBAJpbiGuBmiN6PrZJ2Oeo9HaAxMs7NiYoXa3Kacuf5996wcV/zo8+mnKvv8vae948bqCBydCcfOD4GhK324cwu1N0KWmirRcBi7feN0NB9g15Hm3q/Gb6xLjM0IoCHyBudqg21A3fHd2WmJks1FVYRRcS9q8LILC5BZqD93uylrNvHNogFy+OOZtHVX3ldtPnqZDf4dQBXug3eDQbDB+3vrWhL7zjh2vbF84ySWi1qODd1Ga8WjPnChlOAst9PVx643utEMc9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hXyefz9ioCABFj+ynOvhsp13KKFFZBXS/1GJSezhNMk=;
 b=LdotqA7UJyd2V4yXW7DjoUUNIXv0L9yvniixoPSWT40S3FkNtg2wS+U+S5TRKlL8wpXf/QF+yEj/vzYPAq6BZqDT0zMhiXwCYZ8NXRRFgj5tjo5v3gx7FTWJEcywUERzq2LrdgZYzCzk0CYoocvw8vPkhKkqB2z+zn0UUuznRzV1cP1zMFfWTgKm1SFbBV9TGPnJf7j+IOr9EMbxpOR/2etDzdDYKcV6QiSe77blbnbrUqRpTOw4ZcoGPjrcrIcZlI7x9VUF8O6+oo2akcS5Mh2Zr4FuWU8hoKT4U1MHWvW5xCQZHrt0thcg0PwJviNsTm7LBBKnVnuHXG53VXmLBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BYAPR11MB2565.namprd11.prod.outlook.com (2603:10b6:a02:c9::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.15; Thu, 23 Dec
 2021 18:54:32 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::7894:920e:c7dd:6abd]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::7894:920e:c7dd:6abd%7]) with mapi id 15.20.4801.024; Thu, 23 Dec 2021
 18:54:32 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>
Thread-Topic: [Intel-gfx] [RFC 7/7] drm/i915/guc: Print the GuC error capture
 output register list.
Thread-Index: AQHX3/Ueewn73SRF5061jq6P87GJy6wn02QAgABnhACAGGKigA==
Date: Thu, 23 Dec 2021 18:54:32 +0000
Message-ID: <fb0f6eace4bd1c243544a0804ffa9fa5b16159a6.camel@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-8-alan.previn.teres.alexis@intel.com>
 <20211208002215.GA17960@jons-linux-dev-box>
 <bf9b1af14a700959ca58e615d7d15cb9300ab56f.camel@intel.com>
In-Reply-To: <bf9b1af14a700959ca58e615d7d15cb9300ab56f.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d323f84f-4cfc-4731-9d43-08d9c645a7ec
x-ms-traffictypediagnostic: BYAPR11MB2565:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB2565D6A9979B409A76773B178A7E9@BYAPR11MB2565.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:473;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8K57x/4cSROOIb6ci+kEMXQJqVn79kuk24kGuzorrc0fPYrdIAIEr/ZUxJZpWfc367Oa8poONS3qhGK8xNOh7+XMGdLBb1TZ/qLUq91cW/pnFFJ10UjjRwKPxUkPUCaaosr+UWMZb3/bGavD64JHmeQK8kgOu954IVTdN40c0JB4VRtcgI2MvwLimJXGfaodtOjbe/eayQLM4WmX8hpdxAWB7ouS7FPihmpP05l8ujhhQhAM7XKajQZ8bgnFKxU4057BfRNcG09YJpcWj97tXygMj/5CIk2I9sKfUQfR1SbeB8VXYDH2IERil9NQ1a9c4g/C79+8JWG8PTO/iwfWDxWgKpLlQ8+gKZFwN7okrvwfTR7uj7tn6413ZaBubYT+55T1sIWcXtczQc3cdszVySS5JoRHE0I33rKw8mUw/RCCMchRne6oaN4CWsyBqpIjYJYoWp40jfniaauzs9NWfQKJoJJqQyFs7QEAppz55KK/ZW28NLXatsvsMrENzKIXeiiZN5Tnr5PmrE8ThGhHd6Cr0tOp7zXYoDooF4PTIm4zobfKlAog3JxbaiYX+IxYPW/B9/oPcaAG3sBrS3Fj2HSst5UexK1XEOJYzGYq96bfLE3tVhWSy58lk7ofH6/lGYtH+gzvHsG0fJAElmgnl6RymUZ5cs7lJn1L13n4GDG4Venemf63iMgZI9I1QQCMX6dUuxJ7DCW6Lv7XEClYMg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6512007)(4326008)(26005)(38100700002)(186003)(83380400001)(37006003)(5660300002)(122000001)(508600001)(82960400001)(6862004)(86362001)(8676002)(2616005)(8936002)(38070700005)(6486002)(316002)(36756003)(64756008)(66556008)(66476007)(66946007)(6636002)(76116006)(6506007)(66446008)(2906002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RjRnS1g5Q25nM2twbHA4TWkyZWM5YzZYWXN4SytmcEdUVGVobVhzQmRpYlda?=
 =?utf-8?B?dlRxdndWbG16YWdYc0JVUXBQQzFmZUMzLy9JTE1nS0d3WW5hUlhBcEJzYUdN?=
 =?utf-8?B?T1FFMk5Kb3pHalA5cm9aSHhFeGI0aFUrRHFsSlVsejZGSTV4dWZKejVWVUVn?=
 =?utf-8?B?MFJkNnA2ZzBnV1d2ZWRiWlEwZExIbWRqNDgxb2JodUN0VkNHYkZaTVJBVUtu?=
 =?utf-8?B?M1p5QzNIWmxmNG90RG94bHUyYjJkU05yWnJjOW1SS0lmN0RKc1N2UGlkdkpa?=
 =?utf-8?B?RkgvblliNzUrTFJQcmZQeXdKRDhic0xBVGxYTGlWelJVekVBU1VyVGIzb1Bz?=
 =?utf-8?B?QjBPQWdRaS9ZQk1uMFFKQ05HUmp1N3EwM0RKM3RsNUpkaTlSb0VYT2dOZURH?=
 =?utf-8?B?SFNuck5KRXFOL2M2QkdmeDJicEdpNWhuMTF2ZG9yNDRUQ1RuNHVtMUxkeDg2?=
 =?utf-8?B?SEtERVh5dkdUZ0VEczZCVW52Mi9lUUoxbC9MTXZYdDhST0M5ZkFDdERJTThs?=
 =?utf-8?B?S3JEemdZSWNJeGdTcWlhMTRzUTcyaWVrQXdsRUZ1cU1hMmZuclcrcDh6WFlK?=
 =?utf-8?B?dzRRejZEQ0EvVmpsY2dTd3NwY3NrbEVEWGd3ZmU3RkFHR3NBQjBSSWRkSEk2?=
 =?utf-8?B?Z0wvemZZRmdIRzRDSEJOcEZmcXZKMFpOektCa1BLQkVCTTRWM3EwUXkxaDll?=
 =?utf-8?B?UGR6bHFBeUFOU1lIWi92UmVhWEF6T0pDRWw1MnlGekthTDJzK0RTZGZWRjdL?=
 =?utf-8?B?U3liUndXTE10Tk5rdlpVT1lXZzl0QWhtRVEwZjVyNkNtM3RsUUlRNmJsSGhM?=
 =?utf-8?B?cnI4VEpVSVJ6TEY3akhmR1loZWs3UTVUL3ZDMlJxZ0hNaXdWVWZqdng3aSt6?=
 =?utf-8?B?WndxOUw3Z25ESFB4VVZONEFvRTlWU3hQZ052QnppQmxobVdwZFBIUFB0d0xl?=
 =?utf-8?B?Ym82K3BpY2Z5MysvcWx1aUhqaXBoVjVlNk5EQWxtcERSbFhidnBsM1dKR3RN?=
 =?utf-8?B?clB4WG43TDJ1Qjd4ejMrc3N1di84Tk5JSTZYSytkcTZxaDB0VDY3QzdQMGZp?=
 =?utf-8?B?TFFIazA2eFhsM29DK3dpbERUNVZnRnVZZWc0UEF0TFdNd1kvcTZDVnVodjNw?=
 =?utf-8?B?R05VS0cvOHd0VzJzNnhOenFuOFFMR250NSs5RzRobDcrdGFvT0pSUzczTlNt?=
 =?utf-8?B?L0FiSHJFWHJqampNdEpBOTVkaHlXQnBNTXAwSXhjYy94TmF2OXcwMlcycGxP?=
 =?utf-8?B?UmpmZkVvVzVHSmpPR0ZYLzNBWm9PMDRGZGFDOUdFbkxjWmxzWElIMDNYY3k3?=
 =?utf-8?B?QlVTRlZxVytLTml4VXJ6eFQ4Nmg2ZytWbmRCUWMzeVdwQWFUdVVXSnNtMXFR?=
 =?utf-8?B?aGpBc2IxK2VZMVhyclEySnV0L3h6YmZzZUpjeTFRbDI1MnJGYUVkcjRRSDAz?=
 =?utf-8?B?NFRaczB2SENWS2llU0tyNGZlTUR2TGh6L1NGVUNFMndMWEs1b2REbTlDdTFG?=
 =?utf-8?B?OHZGdXJBdEdKSUhuWEo4VXJtQitLdjl5R3kyUkhaVkV2U01lQUdFQk9Pa1Zl?=
 =?utf-8?B?bTEyZzIrbXNyRFlCb01WY243L2FPZU1DTlZXU1dKeTltQ2JrUFpqY2gwOUVT?=
 =?utf-8?B?K2lPc0dmYlBqNWFvUVRyNWNPQmN2clVCQkI5bnFkYlVzc1d2UENrTW1SdDJL?=
 =?utf-8?B?Y3JDajM0YlNDMFUwSXlSUElMeEN3WDk1enZhTU1kS2hVTmluNE83YlVuOElj?=
 =?utf-8?B?N0FpelR2T2JqVnlKSjh5SHYwbkxxNDI1OSs0enVUdUVpRTFxaytRS2dFTnhi?=
 =?utf-8?B?UFdxL1ZuTVdlOTZZendyd2dPZHJJelNvdDZkOFd4TWhQQ2xBUFNDVTdJY1dR?=
 =?utf-8?B?dk5XMTRUMmdhUkh1LzRiTEVTRzdNbmVLZG53ekFpbUEwOFYxVlZHSUlvQkF4?=
 =?utf-8?B?Z3VFWlJWbGtFWkpnUFd4SnpnZTIzN3g1ZDJQaG9QVnpkNkNLQVpTZDVnN0c5?=
 =?utf-8?B?anVRTGxsc0JuZzNCRVNPRlZNVHRBRDZPRytlYW9MZHg2RTNpV3BCd1p0WklC?=
 =?utf-8?B?ZEFWLzFWclRuRXdIWnl3WmJUL29TUXo1U3pZTVBseVFNeXRFNGRzUzgvMVpQ?=
 =?utf-8?B?UmcvREpBZ3ViMzZQekhRRW5jNDRET0FVY2hFVEZPMmJ6bmpmekprWVRhRHBn?=
 =?utf-8?B?T3BhT2Fpb1N1UytNVnh3UWpiNG9QTzA2QTd3aWFrdjZhZlB4TTdicnFmWHdm?=
 =?utf-8?B?dmVUNnNnbEdKVEhmdHdscWh0MWpFTXI3M1l5YkZoY2wvNk5ud3YrOXBZbjYx?=
 =?utf-8?B?SjBKSFJLYjJxYVVjSGU4U3JYbGtySy81K1JFTkVOb0pnL1BGTGo0Zz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <67E21E22E1DD3448883516C627B47C91@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d323f84f-4cfc-4731-9d43-08d9c645a7ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2021 18:54:32.1199 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ze6dG2U24BuzgqAELHrM4cuzTHttvCpvivUbHdQQZ0ejv3CfpIFi5gDTx9yXFuHIc1oGEHt3L2D70fvRQbdEWR6IHFjH1QUYg/MVCq9kVD6oIEQCIiawkFT1ij9jS4cM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2565
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 7/7] drm/i915/guc: Print the GuC error capture
 output register list.
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

UmV2aXNpdGluZyBiZWxvdyBodW5rIG9mIHBhdGNoLTcgY29tbWVudCwgYXMgcGVyIG9mZmxpbmUg
ZGlzY3Vzc2lvbiB3aXRoIE1hdHQsDQp0aGVyZSBpcyBsaXR0bGUgYmVuZWZpdCB0byBldmVuIG1h
a2luZyB0aGF0IGd1Yy1pZCBsb29rdXAgYmVjYXVzZToNCg0KMS4gdGhlIGRlbGF5IGJldHdlZW4g
dGhlIGNvbnRleHQgcmVzZXQgbm90aWZpY2F0aW9uICh3aGVuIHRoZSB2bWFzIGFyZSBjb3BpZWQN
CiAgIGFuZCB3aGVuIHdlIHZlcmlmeSB3ZSBoYWQgcmVjZWl2ZWQgYSBndWMgZXJyIGNhcHR1cmUg
ZHVtcCkgbWF5IGJlIHN1YmplY3RpdmVseQ0KICAgbGFyZ2UgZW5vdWdoIGFuZCBub3QgdGV0aGVy
ZWQgdGhhdCB0aGUgZ3VjLWlkIG1heSBoYXZlIGFscmVhZHkgYmVlbiByZS1hc3NpZ25lZC4NCg0K
Mi4gSSB3YXMgcmVhbGx5IGxvb2tpbmcgZm9yIHNvbWUga2luZCBvZiB1bmlxdWUgY29udGV4dCBo
YW5kbGUgdG8gcHJpbnQgb3V0IHRoYXQgY291bGQNCiAgIGJlIGNvcnJlbGF0ZWQgKGJ5IHVzZXIg
aW5zcGVjdGluZyB0aGUgZHVtcCkgYmFjayB0byBhIHVuaXF1ZSBhcHAgb3IgcHJvY2VzcyBvcg0K
ICAgY29udGV4dC1pZCBidXQgY2FudCBmaW5kIHN1Y2ggYSBwYXJhbSBpbiBzdHJ1Y3QgaW50ZWxf
Y29udGV4dC4NCg0KQXMgcGFydCBvZiBmdXJ0aGVyIHJldmlld2luZyB0aGUgZW5kIHRvIGVuZCBm
bG93cyBhbmQgcG9zc2libGUgZXJyb3Igc2NlbmFyaW9zLCB0aGVyZQ0KYWxzbyBtYXkgcG90ZW50
aWFsbHkgYmUgYSBtaXNtYXRjaCBiZXR3ZWVuICJ3aGljaCBjb250ZXh0IHdhcyByZXNldCBieSBn
dWMgYXQgdGltZS1uIg0KdnMgIndoaWNoIGNvbnRleHQncyB2bWEgYnVmZmVycyBpcyBiZWluZyBw
cmludGVkIG91dCBhdCB0aW1lLW4reCIgaWYNCndlIGFyZSBleHBlcmllbmNpbmcgYmFjay10by1i
YWNrIHJlc2V0cyBhbmQgdGhlIHVzZXIgZHVtcGVkIHRoZSBkZWJ1Z2ZzIHgtdGltZSBsYXRlci4N
Cg0KKFJlY2FwOiBGaXJzdCwgZ3VjIG5vdGlmaWVzIGNhcHR1cmUgZXZlbnQsIHNlY29uZCwgZ3Vj
IG5vdGlmaWVzIGNvbnRleHQgcmVzZXQgZHVyaW5nDQp3aGljaCB3ZSB0cmlnZ2VyIGk5MTVfZ3B1
X2NvcmVkdW1wLiBJbiB0aGlzIHNlY29uZCBzdGVwLCB0aGUgdm1hJ3MgYXJlIGR1bXBlZCBhbmQg
d2UNCnZlcmlmeSB0aGF0IHRoZSBndWMgY2FwdHVyZSBoYXBwZW5lZCBidXQgZG9uJ3QgcGFyc2Ug
dGhlIGd1Yy1lcnItY2FwdHVyZS1sb2dzIHlldC4NClRoaXJkIHN0ZXAgaXMgd2hlbiB1c2VyIHRy
aWdnZXJzIHRoZSBkZWJ1Z2ZzIHRvIGR1bXAgd2hpY2ggaXMgd2hlbiB3ZSBwYXJzZSB0aGUgZXJy
b3INCmNhcHR1cmUgbG9ncy4pDQoNCkFzIGEgZml4LCB3aGF0IHdlIGNhbiBkbyBpbiB0aGUgZ3Vj
X2Vycm9yX2NhcHR1cmUgcmVwb3J0IG91dCBpcyB0byBlbnN1cmUgdGhhdA0Kd2UgZG9udCByZS1w
cmludCB0aGUgcHJldmlvdXNseSBkdW1wZWQgdm1hcyBpZiB3ZSBlbmQgdXAgZmluZGluZyBtdWx0
aXBsZQ0KZ3VjLWVycm9yLWNhcHR1cmUgZHVtcHMgc2luY2UgdGhlIGk5MTVfZ3B1X2NvcmVkdW1w
IHdvdWxkIGhhdmUgb25seSBjYXB0dXJlZCB0aGUgdm1hJ3MNCmZvciB0aGUgdmVyeSBmaXJzdCBj
b250ZXh0IHRoYXQgd2FzIHJlc2V0LiBBbmQgd2l0aCBndWMtc3VibWlzc2lvbiwgdGhhdCB3b3Vs
ZCBhbHdheXMNCmNvcnJlbGF0ZSB0byB0aGUgIm5leHQteWV0LXRvLWJlLXBhcnNlZCIgZ3VjLWVy
ci1jYXB0dXJlIGR1bXAgKHNpbmNlIHRoZSBndWMtZXJyb3ItY2FwdHVyZQ0KbG9ncyBhcmUgbGFy
Z2UgZW5vdWdoIHRvIGhvbGQgZGF0YSBmb3IgbXVsdGlwbGUgZHVtcHMpLg0KDQpUaGUgY2hhbmdl
cyAocmVtb3ZhbCBvZiBiZWxvdy1odW5rIGFuZCBhZGRpbmcgb2Ygb25seS1wcmludC10aGUtZmly
c3Qtdm1hIikgaXMgdHJpdmlhbA0KYnV0IGkgZmVsdCBpdCB3YXJyYW50ZWQgYSBnb29kIGV4cGxh
bmF0aW9uLiBBcG9sb2dpZXMgZm9yIHRoZSBpbmJveCBub2lzZS4NCg0KLi4uYWxhbg0KDQpPbiBU
dWUsIDIwMjEtMTItMDcgYXQgMjI6MzIgLTA4MDAsIEFsYW4gUHJldmluIFRlcmVzIEFsZXhpcyB3
cm90ZToNCj4gVGhhbmtzIGFnYWluIGZvciB0aGUgZGV0YWlsZWQgcmV2aWV3IGhlcmUuDQo+IFdp
bGwgZml4IGFsbCB0aGUgcmVzdCBvbiBuZXh0IHJldi4NCj4gT25lIHNwZWNpYWwgcmVzcG9uc2Ug
Zm9yIHRoaXMgb25lOg0KPiANCj4gDQo+IE9uIFR1ZSwgMjAyMS0xMi0wNyBhdCAxNjoyMiAtMDgw
MCwgTWF0dGhldyBCcm9zdCB3cm90ZToNCj4gPiBPbiBNb24sIE5vdiAyMiwgMjAyMSBhdCAwMzow
NDowMlBNIC0wODAwLCBBbGFuIFByZXZpbiB3cm90ZToNCj4gPiA+ICsJCQlpZiAoZGF0YXR5cGUg
PT0gR1VDX0NBUFRVUkVfTElTVF9UWVBFX0VOR0lORV9JTlNUQU5DRSkgew0KPiA+ID4gKwkJCQlH
Q0FQX1BSSU5UX0dVQ19JTlNUX0lORk8oaTkxNSwgZWJ1ZiwgZGF0YSk7DQo+ID4gPiArCQkJCWVu
Z19pbnN0ID0gRklFTERfR0VUKEdVQ19DQVBUVVJFX0RBVEFIRFJfU1JDX0lOU1RBTkNFLCBkYXRh
LmluZm8pOw0KPiA+ID4gKwkJCQllbmcgPSBndWNfbG9va3VwX2VuZ2luZShndWMsIGVuZ2luZWNs
YXNzLCBlbmdfaW5zdCk7DQo+ID4gPiArCQkJCWlmIChlbmcpIHsNCj4gPiA+ICsJCQkJCUdDQVBf
UFJJTlRfSU5URUxfRU5HX0lORk8oaTkxNSwgZWJ1ZiwgZW5nKTsNCj4gPiA+ICsJCQkJfSBlbHNl
IHsNCj4gPiA+ICsJCQkJCVBSSU5UKCZpOTE1LT5kcm0sIGVidWYsICIgICAgaTkxNS1FbmctTG9v
a3VwIEZhaWwhXG4iKTsNCj4gPiA+ICsJCQkJfQ0KPiA+ID4gKwkJCQljZSA9IGd1Y19jb250ZXh0
X2xvb2t1cChndWMsIGRhdGEuZ3VjX2N0eF9pZCk7DQo+ID4gDQo+ID4gWW91IGFyZSBnb2luZyB0
byBuZWVkIHRvIHJlZmVyZW5jZSBjb3VudCB0aGUgJ2NlJyBoZXJlLiBTZWUNCj4gPiBpbnRlbF9n
dWNfY29udGV4dF9yZXNldF9wcm9jZXNzX21zZyBmb3IgYW4gZXhhbXBsZS4gDQo+ID4gDQo+IA0K
PiBPaCBjcmFwIC0gaSBtaXNzZWQgdGhpcyBvbmUgLSB3aGljaCB5b3UgaGFkIGV4cGxpY2l0bHkg
bWVudGlvbmVkIG9mZmxpbmUgd2hlbiBpIHdhcyBkb2luZyB0aGUNCj4gZGV2ZWxvcG1lbnQuIFNv
cnJ5IGFib3V0IHRoYXQgaSBqdXN0IHRvdGFsbHkgbWlzc2VkIGl0IGZyb20gbXkgdG9kby1ub3Rl
cy4NCj4gDQo+IC4uLmFsYW4NCg0K
