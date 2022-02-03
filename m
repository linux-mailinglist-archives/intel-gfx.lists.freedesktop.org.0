Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E944A4A8EE6
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 21:41:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDAD610E792;
	Thu,  3 Feb 2022 20:41:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58EC810E792
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 20:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643920878; x=1675456878;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=R/mg0mMHvyWZBcFE6xMBt6LKmJeAvVcVOifbmgnLPvQ=;
 b=BjIeAFg9VLiDlT81cYMXRFPo20Djm77p/iDWU1pKXSq9+1bFrOuLC1g8
 iaA1Nk/AnhIdMtCF5jKcdjtwuh+pDQj8dq8adn7t4Zsf8YlLbH5quhdlG
 TV0zbTGDAAHQfLfqBL0Hx3rkv+AjWwwbrhRR5RwVK7X5hCn/oZ0g0awkc
 LDR4Sk/LUWz03VQA24X1BPWU6ILgokXFRhDtdk6P2QGxx5uS77Yjz/5rq
 FaWekHtix1yiYLgm3PcMeXvyeKrr84v/PZ+ZEyoUqP5Npe964oSJYk+KE
 jb8Pw/VIqbKgiXE5OlBbUxkm7PHREzvyyZmUqMtUuWgbcwwFZbI2UE+Ri w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="248012808"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="248012808"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 12:40:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="631479764"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 03 Feb 2022 12:40:58 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 3 Feb 2022 12:40:57 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 3 Feb 2022 12:40:57 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 3 Feb 2022 12:40:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vi7JYuZvFupihLL+8dDb6nHm9i5BBM5gTkTLTgZrHy0ZLrq5hQS/fs/X44A5+liqCpPi7H++uz//zp7prL97eQPo2szviXiRnhg3Tv28NPuvUsJz1E9PaeWctbqR8nr9UmiJzC2j2w8nNUWgr0Kp/zJdl/4zznJw8shxxNgC9A+PKGqkpCnWlfjN0j/a1EL26UCP24rbvO4TLaiZSyWRhcQAR+dZu7DJojMG5Cv4F0qklJ0Mw6TZLeY5aIu2/v7lI3sn4L/d7G/1gEReqf4U0ZJrcKazyFg2Mb5NF2CaHg3nHdFTceVvJLjrlDMmJDDPlOju5gk0irBsrD+Eyz1Olw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R/mg0mMHvyWZBcFE6xMBt6LKmJeAvVcVOifbmgnLPvQ=;
 b=KOB3uAfd5ODiRrM3H68sZSaScMG19NMV+qz7z1PZmMZLMjNlP2vIB7iyQnzxfnXbK7uAAI93nXNtggc+m7QYtlf+6VI01wreM+W8mnq3Rxheh+tk0A4RDxTF4xxZRbO754/+0OJovOxyweQ6pyPAbytHspvLPzU9e9Pnh2wh6J8BMIOr/O7MeM65i6AIDcoB5vZM0Z1OwASHhfQXE8XkiEGTk43LA9BtOYVU092btu6Xud0a67YtdcforfUWLkqOQvDk1nfCTeAd3Jc0jyaOhYDY2Q46Vhbtks85rvrpQTUXz/47gVARKtF2+guTCfImbj8OLAYb9+f+A/N9PDYvug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BN0PR11MB5744.namprd11.prod.outlook.com (2603:10b6:408:166::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Thu, 3 Feb
 2022 20:40:54 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13%7]) with mapi id 15.20.4930.022; Thu, 3 Feb 2022
 20:40:54 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>, "Harrison, John C"
 <john.c.harrison@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 01/10] drm/i915/guc: Update GuC ADS size
 for error capture lists
Thread-Index: AQHYEqH5AesT2BN4CkW6nekEruHB2ax1582AgAxUXgCAABEugIAACZeAgAABE4A=
Date: Thu, 3 Feb 2022 20:40:54 +0000
Message-ID: <a7dc9b9d3cbdabdec9a56a0a8406f15d1e72692b.camel@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-2-alan.previn.teres.alexis@intel.com>
 <20220126224619.lyftw7w3okka4lfg@ldmartin-desk2>
 <20220203190324.GA4413@jons-linux-dev-box>
 <20220203200453.jrxhact4bcmwfpw7@ldmartin-desk2>
 <d96b56cd199796f429263ebb5335d97dfd2d9e3d.camel@intel.com>
In-Reply-To: <d96b56cd199796f429263ebb5335d97dfd2d9e3d.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f92e0087-c2f5-4815-82bd-08d9e7557942
x-ms-traffictypediagnostic: BN0PR11MB5744:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN0PR11MB57447172644E3AA3EEF38B0E8A289@BN0PR11MB5744.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fTl2IR7WrrymcOeiRcMhSnHPqGCc0BQzAf7jfqSQCoAtrpAvGoewjXm3SvCzVtNMK1ZhG9/jz4LvwJTmXt3urU2W3iSY1lLj8ED3VsHnFZdUeRYFrvzAvVJNpmXzacHuZneJ8IFelBofRaib+YjgN+3L3vTQj8peeoZOTb7lRoKO/tnFnMMYVuvMWSa2qvo5SSacCL82sHCgDx1RCwUBlyQOpfk2sm1tZ9TPtidgfggbC0ZU2E1ImHl2pVH/5Y0mb0Z0Ph6s39P1lkxGXBlqzPCUNu8hcaRUkF55vO/y3P+ExkgH+KJ2r/Vo8xYIERCYMBku2GG8jD5tvpr/MrNna3i1P2YbgPLm4o3zZwnWhiEvr+gxdogHA59PTrqqV1OneS5UDKbQr5qfItsvsALMqRw3fbuneFAitvNU6DRbXvQoTWzU6HYvvfEFFPqRBZ+pQlsR86Wna3d3/cbvux4PY9fi0RX7mJselzYwPnNT7KNvU3ybfVfuOpjnnyAZwVh1dqx2U20nDsz5ci4m4eLliZVweiFaxAuSidiRzppF9SYc1THLZWoVA9r8u/sjbmjSE9fLWNoIbPGzzMQKHF/0Kny0DfHTcVvvhSN/8fIApy/40nDyYu0ddSouYmw80mvuVxihHFNxk2e0BTZjKwD9+BTb0YyQXwWrgtTb38vXuFG5HGzH5YbwJowK1hHxFmy4tUYXX3pjrX5Ea9livBWC9xeuQaUz2epP0NZ0Lqsn/d0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(76116006)(66446008)(36756003)(66556008)(64756008)(26005)(316002)(4326008)(6506007)(66946007)(38070700005)(186003)(66476007)(2906002)(8676002)(2616005)(6636002)(83380400001)(71200400001)(8936002)(6512007)(5660300002)(110136005)(38100700002)(15650500001)(6486002)(966005)(122000001)(86362001)(82960400001)(508600001)(522954003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cXJUYnloNFhLRlh3MTF5am9XV0FaK3ZlOEljSWtJc0VraE8weGJRK0pLM3k5?=
 =?utf-8?B?THJHZDN1Sk8rWE9Db0NMckY5RXFTQWI4eVloUXFwYVlJMmF0Znk0U2lDRkNG?=
 =?utf-8?B?UWdXYmg1ZkxLMWMyMGRvdzB0TTgxaU9ieEE2SUNEWFI2TlBPSlErSEdGc24v?=
 =?utf-8?B?RTFqdmRRYnJjVXFtb3hyU2xXdjN0WWU3bTRUTXZMZ1lXcysxaGRLdWpOUnlT?=
 =?utf-8?B?eWZSUUpZQmFuRE41ZjlTTGttMHVpYjdnRnVNM0hTbnhYZWtQQjhZRkJZYnN4?=
 =?utf-8?B?NUFhaDNkMkp0UW0vS3pkb1VPTVBreU1qc0FhQmFLTzN3Z0VvR2hXQXVraHll?=
 =?utf-8?B?RDRkQndEeFBxWHFidDk3YytRVWMxRVNsQ3JvUDFxRUJ6YXp2Uy9oVmpGVnRv?=
 =?utf-8?B?elZsNUdyTmpmM1pVRGdIN2dSNDNIT1ZxYUpxbDllZ2Uyb3phV2o3QWh4d2dX?=
 =?utf-8?B?MDVXMHVCN05vTXc5UDQxQjdINE00Q0dBYzZBckR2cDdKUmJCTzk0L2JwN0Ix?=
 =?utf-8?B?cWpaK1VUOUZXZXJzbnFIMVcwR1lQL2hUelhPWkVuNjQ4QlYyRzFUaWU0bE9F?=
 =?utf-8?B?b2FQcUVOQmxJRTBnbVlWUzVWdWJvck1FYmxUUTF1VEVieUtKRGVZY3p4VjBU?=
 =?utf-8?B?VDdkbEN5a3VBMjNHZzM5SVNxRjRGUDZrUlozSi9KcVg1M2ErTWlCemlPaUFD?=
 =?utf-8?B?cFZHa1hQbUcxVDJGRUZ6V2paYkRGcDE5UWdMZG9BZHZoTHJ0T1ZmNVZyS3NO?=
 =?utf-8?B?MTJyVmM1UzIxenVjOWl3a29xWE15T3g1aklZakR6MGtkbmJkL2x6RWNQTzBj?=
 =?utf-8?B?SGdGckNDa3krcXpWMzg0bno3K3ljaDRhem91cGhuNzN4M3VnOVZIc3VVVmVu?=
 =?utf-8?B?L0J6b3Zwa0lLZ3JzMlQwbjJZY2U5Y0xwanR4RWtWWnpubkd0UVk2LzBqcTkx?=
 =?utf-8?B?ZU5VbnQ0L3hsZGFJSjRaZWZxaDlqOEJYa1lNVFkwbE9qbWVKMG54UDNLK0tH?=
 =?utf-8?B?YjJEYTRHUi9TanNCbzZINnY3ZWxPOGd3S0VwTjE2U1h2aWV0WWs2ajVMd3BH?=
 =?utf-8?B?ZkhmaUdKOVA0NS9hcW84NlVONkNUelVPemd6ZE5CaUhRcHFKVFF0QWxuam1p?=
 =?utf-8?B?TzZoa0ZEL1VJRzFSMWxmSFY0S1IxMnJnTEtNZTlTRXp3UXRwSGNWOGNBdVN6?=
 =?utf-8?B?dDJPSDd1MWNTTXBwdWxiUnVoeUZ6SGJqZnpieWk5b2ZNK3A5WGRBQnl4ckNP?=
 =?utf-8?B?Z3BVLzVzRnJENHQzdkQwdlFSdUJwb1ZrV2xkNTltelVpMTZQMEthVlJFYklo?=
 =?utf-8?B?aFlSQUNWWVZHUXc0NENMTklSYWM1NjlkLy9xYTVUMFBBM0hhYWpaTnJ1ckZ0?=
 =?utf-8?B?SVhvZlEvYXJ2V2FteWk1aUpMSGR0eFFHSnhzV1pQVXMxdHc4ZlMrNTNUMXhw?=
 =?utf-8?B?YXN6bUVUSTZhL3FtUzdQb2NqTk1RWjRhUW1ka3ZKaTFkSEhvZG9HMzhwcUJz?=
 =?utf-8?B?enJnRFR3d0RsbnMxbmpaZGYzTEM0SDFpY25vV1BCS0NnOW1yRWp4cnM2d0xZ?=
 =?utf-8?B?VXlreW9kUTdtakpBUjY3NU01R09oUFRuQ1VHc1dHQXFaQzhsMjV3Vy94ZW9w?=
 =?utf-8?B?cmw3aWZCaDVuM1pVNDN2R0IxUVl0a1doMy9iNUVnMlFPZnE4SGRTbjl4ckRq?=
 =?utf-8?B?TCtkRy9RcWJxYTlNdWZ3ZERGUDlpUWdNblluaktsVXM1cVdWdUFPZ3dielNw?=
 =?utf-8?B?WmdnM0lEcFBmb0pldFFORGpONnozWFB2cjZjU0tNSlBrL3BwUXl2S1ZEZjNr?=
 =?utf-8?B?MDZTUTVYaTZFMFptUFlqSFZGbVZBM2NGY29SLzV2SFJzREttbEJsZjhCU1hN?=
 =?utf-8?B?VVdlZGxPOUYxTDY2TG9id25QdUp5dk1xMkNpNXBLdVkxTHZtTnhCcVRGNzhT?=
 =?utf-8?B?ajh3TkpKbXlnYm5aQ1Jobm1Mb3FZRXAzQ1dzeHRjRFFQR1kyUkRycUxNUnFF?=
 =?utf-8?B?UXI2TDhGU01DSTJDUVV3YjlTRzYrNXlMYmIxekZ3UXNIUGErWkRWcVRCR3A4?=
 =?utf-8?B?ZXJ1VDBld2hhaHBnUFFxUmVvUTFpL2VydGZGV1B5bUtDakN4N29CNjlDQmlv?=
 =?utf-8?B?aHd4UnU5eGpvTFR1LzhnTW9hZmRuckNER3RMMkRycEV0c2w0M3hMZjIwNU15?=
 =?utf-8?B?cTNjL09XY3RaeFcxbGRMZ1U0Q3NhbmFPSm8wRUt1N0kzVjByMzFiODlmbXJY?=
 =?utf-8?B?WE1MdkRUODJrakE5b2tXMVJDb0hERUxYcFAwdnBsZ2I0THN6LzAvR1FFazR5?=
 =?utf-8?B?UGR2TUhXeHdEQ29hcldpdUFoQnBlZFlkWjVxc29vOGZEYUVqcUtFZz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F2691851607E374D99675ACD69ACAA2F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f92e0087-c2f5-4815-82bd-08d9e7557942
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 20:40:54.1336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s6mpvXUAa0V5Duk0Msp9Ya2LZSVSvqy/EgfKkKYWVzP6eRv1e4CeqSs6EnXgZsHqtgbZ2NlbemaR135urIwo7xJC/DYPNl6yTf0Msui3Updq8pkLtx/4zCwA0ASzlV4/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5744
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 01/10] drm/i915/guc: Update GuC ADS size
 for error capture lists
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

QXBvbG9naWVzLCBwbGVhc2UgaWdub3JlIGxhc3QgcmVwbHkgKHdyZXN0bGluZyB3aXRoIG15IFZO
QykuIFByb3BlciByZXBseToNCg0KT24gVGh1LCAyMDIyLTAyLTAzIGF0IDEyOjM5IC0wODAwLCBB
bGFuIFByZXZpbiBUZXJlcyBBbGV4aXMgd3JvdGU6DQo+IA0KPiANCj4gT24gVGh1LCAyMDIyLTAy
LTAzIGF0IDEyOjA0IC0wODAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6DQo+ID4gT24gVGh1LCBG
ZWIgMDMsIDIwMjIgYXQgMTE6MDM6MjRBTSAtMDgwMCwgTWF0dGhldyBCcm9zdCB3cm90ZToNCj4g
PiA+IE9uIFdlZCwgSmFuIDI2LCAyMDIyIGF0IDAyOjQ2OjE5UE0gLTA4MDAsIEx1Y2FzIERlIE1h
cmNoaSB3cm90ZToNCj4gPiA+ID4gT24gV2VkLCBKYW4gMjYsIDIwMjIgYXQgMDI6NDg6MTNBTSAt
MDgwMCwgQWxhbiBQcmV2aW4gd3JvdGU6DQo+ID4gPiA+ID4gVXBkYXRlIEd1QyBBRFMgc2l6ZSBh
bGxvY2F0aW9uIHRvIGluY2x1ZGUgc3BhY2UgZm9yDQo+ID4gPiA+ID4gdGhlIGxpc3RzIG9mIGVy
cm9yIHN0YXRlIGNhcHR1cmUgcmVnaXN0ZXIgZGVzY3JpcHRvcnMuDQo+ID4gPiA+ID4gDQo+ID4g
PiA+ID4gQWxzbywgcG9wdWxhdGUgdGhlIGxpc3RzIG9mIHJlZ2lzdGVycyB3ZSB3YW50IEd1QyB0
byByZXBvcnQgYmFjayB0bw0KPiA+ID4gPiA+IEhvc3Qgb24gZW5naW5lIHJlc2V0IGV2ZW50cy4g
VGhpcyBsaXN0IHNob3VsZCBpbmNsdWRlIGdsb2JhbCwNCj4gPiA+ID4gPiBlbmdpbmUtY2xhc3Mg
YW5kIGVuZ2luZS1pbnN0YW5jZSByZWdpc3RlcnMgZm9yIGV2ZXJ5IGVuZ2luZS1jbGFzcw0KPiA+
ID4gPiA+IHR5cGUgb24gdGhlIGN1cnJlbnQgaGFyZHdhcmUuDQo+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gTk9URTogU3RhcnQgd2l0aCBhIHNhbXBsZSB0YWJsZSBvZiByZWdpc3RlciBsaXN0cyB0byBs
YXlvdXQgdGhlDQo+ID4gPiA+ID4gZnJhbWV3b3JrIGJlZm9yZSBhZGRpbmcgcmVhbCByZWdpc3Rl
cnMgaW4gc3Vic2VxdWVudCBwYXRjaC4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBBbGFuIFByZXZpbiA8YWxhbi5wcmV2aW4udGVyZXMuYWxleGlzQGludGVsLmNvbT4NCj4g
PiA+ID4gPiAtLS0NCj4gPiA+ID4gDQo+ID4gPiA+IC4uLg0KPiA+ID4gPiANCj4gPiA+ID4gPiBz
dGF0aWMgdm9pZCBfX2d1Y19hZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpDQo+ID4gPiA+
ID4gew0KPiA+ID4gPiA+IAlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gZ3VjX3RvX2d0KGd1Yyk7DQo+
ID4gPiA+ID4gQEAgLTU3Myw5ICs1NTMsOSBAQCBzdGF0aWMgdm9pZCBfX2d1Y19hZHNfaW5pdChz
dHJ1Y3QgaW50ZWxfZ3VjICpndWMpDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gCWJhc2UgPSBpbnRl
bF9ndWNfZ2d0dF9vZmZzZXQoZ3VjLCBndWMtPmFkc192bWEpOw0KPiA+ID4gPiA+IA0KPiA+ID4g
PiA+IC0JLyogQ2FwdHVyZSBsaXN0IGZvciBoYW5nIGRlYnVnICovDQo+ID4gPiA+ID4gLQlndWNf
Y2FwdHVyZV9saXN0X2luaXQoZ3VjLCBibG9iKTsNCj4gPiA+ID4gPiAtDQo+ID4gPiA+ID4gKwkv
KiBMaXN0cyBmb3IgZXJyb3IgY2FwdHVyZSBkZWJ1ZyAqLw0KPiA+ID4gPiA+ICsJaW50ZWxfZ3Vj
X2NhcHR1cmVfcHJlcF9saXN0cyhndWMsIChzdHJ1Y3QgZ3VjX2FkcyAqKWJsb2IsIGJhc2UsDQo+
ID4gPiA+IA0KPiA+ID4gPiBubywgcGxlYXNlIGRvbid0IGNhc3QvZXhwb3J0IHN0cnVjdCBndWNf
YWRzIGxpa2UgdGhpcy4gV2UgY2FuJ3QgcmVhbGx5DQo+ID4gPiA+IGRlcmVmZXJlbmNlIGl0IHNp
bmNlIGl0IG1heSBiZSBpbiBJTyBtZW1vcnkuDQo+ID4gPiA+IA0KPiA+ID4gPiBTZWUgaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy85OTM3OC8gd2l0aCB0aGUgaHVnZQ0K
PiA+ID4gPiByZWZhY3RvciBpbiB0aGlzIGZpbGUgdG8gbWFrZSBpdCBjb25mb3JtIHRvIHRoZSBy
dWxlcyBvZiBhY2Nlc3NpbmcgSU8NCj4gPiA+ID4gbWVtb3J5Lg0KPiA+ID4gPiANCj4gPiA+ID4g
TWF5YmUgdGhpcyBsaXN0IGNvdWxkIGJlIGFwcGVuZGVkIGluIHRoZSBzYW1lIHJlZ2xpc3QgYnVm
ZmVyIGFuZCB3ZSBqdXN0DQo+ID4gPiA+IGNvcHkgaXQgb25jZSB0byBpdHMgZmluYWwgbG9jYXRp
b24sIGxpa2Ugd2UgYXJlIGRvaW5nIHdpdGggdGhlIHJlZ2xpc3Q/DQo+ID4gPiA+IA0KPiA+ID4g
DQo+ID4gPiBBZ3JlZSB3aXRoIEx1Y2FzIGhlcmUsIGxldCdzIGNyZWF0ZSB0aGUgY2FwdHVyZSBs
aXN0IG9uIHByb2JlIGFuZCBzdG9yZQ0KPiA+ID4gaXQgc29tZXdoZXJlIGluIHRoZSBkZXZpY2Ug
ZGF0YS4gT24gQURTIHBvcHVsYXRpb24gdGhpcyBtb3JlIG9yIGxlc3MNCj4gPiA+IHR1cm5zIGlu
dG8gYSBtZW1jcHkgKG9yIGFmdGVyIEx1Y2FzJ3Mgc2VyaWVzIGEgZG1hLWJ1Zi1tYXAgY2FsbCku
IEFuZCBvbg0KPiA+ID4gZmluaSwganVzdCBmcmVlIHRvIHN0b3JlZCBkYXRhLiBUaGUgY3JlYXRl
IGNhcHR1cmUgbGlzdCBJTU8gaXMgZmluZSB0bw0KPiA+ID4gYmUgZG9uZSBpbiBhbiBleHRlcm5h
bCBmaWxlIGFuZCByZXR1cm4gdGhlIGRhdGEgdG8gdGhlIEFEUyBjb2RlIGJ1dA0KPiA+ID4gbGV0
J3MgbWFrZSBzdXJlIGV2ZXJ5b25lIGlzIG9uIGJvYXJkIHdpdGggdGhhdC4gTWF5YmUgcGluZyBM
dWNhcw0KPiA+ID4gZGlyZWN0bHkgYWJvdXQgdGhpcz8NCj4gPiANCj4gPiB5ZWFoLCBzb3VuZHMg
Z29vZCB0byBtZS4gTXkgd29ycnkgaXMgZXhwb3J0aW5nIEFEUyBzdHJ1Y3QgbGF5b3V0IHRvDQo+
ID4gb3RoZXIgY29tcGlsYXRpb24gdW5pdHMuIEFza2luZyBmb3IgdGhlIGVudGlyZSBhZHMgYmxv
Yg0KPiA+IChvciB3aGF0IHdvdWxkIGJlIGRtYV9idWZfbWFwIGluIG15IHBhdGNoZXMsIG9yIGlv
c3lzX21hcCBpbiB0aGUgbmV3DQo+ID4gdmVyc2lvbiBJIHdpbGwgc2VuZCBzb29uKSBjb3VsZCBx
dWlja2x5IHNwcmVhZCB0b28gbXVjaCBrbm93bGVkZ2UgYWJvdXQgaXQgdG8NCj4gPiB0aGUgcmVz
dCBvZiB0aGUgZHJpdmVyLg0KPiA+IA0KPiANCg0KSSdtIGluIHBhcnRpYWwgZGlzYWdyZWVtZW50
IHdpdGggYWJvdmUuIEJhc2VkIG9uIGFib3ZlIHN0YXRlbWVudCwgYXJlIHdlIGVuZm9yY2luZw0K
dGhhdCB3ZSBtdXN0IGFsd2F5cyBjb250aW51ZSB0byBvbmx5IGhhdmUgQURTIGtub3cgdGhlIDJu
ZCBsZXZlbCBibG9ibCBzdHJ1Y3R1cmUgbGF5b3V0Pw0KRG9lc24ndCB0aGF0IGFsc28gZm9yY2Ug
dGhhdCBpbnRlbGxpZ2VuY2Ugb2Yga25vd2luZyBpdHMgc3Vic3RydWN0dXJlIGNvbnRlbnRzIHRv
DQphbHdheXMgYmUgaW4gQURTIG9ubHk/IFNvIEFEUyBDIGZpbGUgY29udGludWVzIHRvIGdyb3cg
bGFyZ2VyIGFuZCBsYXJnZXIgd2l0aCBjb21wbGV0ZWx5DQpvcnRob2dvbmFsIGRvbWFpbiBzcGVj
aWZpYyBrbm93bGVkZ2U/IChnb2xkZW4gY29udGV4dDogZW5naW5lIGluZm8sDQplcnJvci1jYXB0
dXJlOiBkZWJ1ZyByZWdpc3RlcnMsIGV0Yy4uKS4NCkkgYmVsaWV2ZSBBRFMgc2hvdWxkIHJlYWxs
eSBsZXQgdGhlIHN1YnN0cnVjdHVyZSBoZWFkZXJzIGJlIGFjY2Vzc2libGUgdG8gZXh0ZXJuYWwN
Cm1vZHVsZXMgdG8gZGVhbCB3aXRoIHRoZSBwYXJzaW5nLCBzaXplIGRldGVybWluYXRpb24gYW5k
IHByZXBhcmluZyBpdHMgY29udGVudHMuDQoNCk5PVEU6IHNlZSBteSBuZXh0IGNvbW1lbnQgc3Bl
Y2lmaWNhbGx5IHJlZ2FyZGluZyB0aGUgcG9pbnRlciBhY2Nlc3MuDQoNCg0KPiBJIHRoaW5rIHdl
IHNob3VsZCBhdCBtb3N0IGV4cG9ydCB0aGUgc3BlZmljaWMgb2Zmc2V0IGluc2lkZSB0aGUgYnVm
ZmVyDQo+IA0KPiA+IGFub3RoZXIgY29tcGlsYXRpb24gdW5pdCBjYW4gZmlsbCBvdXQuIEluIHRo
YXQgY2FzZSB3aXRoIHRoZQ0KPiA+IGlvc3lzX2J1ZiBBUEkgd2Ugd291bGQgcmV0dXJuIGEgc2hh
bGxvdyBjb3B5IG9mIG91ciBndWMtPmFkc19tYXAgKw0KPiA+IG9mZnNldC4NCj4gPiANCj4gPiBB
bmQgdGhlIG90aGVyIGFsdGVybmF0aXZlIHdvdWxkIGJlIGFzIHlvdSBzdWdnZXN0ZWQ6IHNhdmUg
dGhlIGxpc3QgaW4gYQ0KPiA+IHRlbXBvcmFyeSBidWZmZXIgYW5kIHdoZW4gbmVlZGVkIGNhbGwg
aW50ZWxfZ3VjX2FkcygpIHRvIHBvcHVsYXRlIHRoYXQNCj4gPiBpbnRvIGFkcyBpbiB0aGUgcmln
aHQgcGxhY2UuDQo+ID4gDQo+IA0KQWxhbjogVGhlIGZpcnN0IHBhcnQgb2YgYWJvdmUgaXMgYWxy
ZWFkeSB3aGF0IGlzIGhhcHBlbmluZyBpbiBteSBzZXJpZXMgdG9kYXksDQp3ZSBoYXZlIGEgc2Vw
ZXJhdGUgcmVnaXN0ZXIgbGlzdCAgaW4gdGhlIGludGVsX2d1Y19jYXB0dXJlIG1vZHVsZQ0KdGhh
dCBhbHNvIGRldGVybWluZXMgKGJhc2VkIG9uIGRldmljZSBhbmQgZnVzaW5nKSB3aGljaCByZWdp
c3RlcnMNCnRvIGluY2x1ZGUgb3IgZXhjbHVkZS4gVGhlcmUgaXMgYXJlIHN0YXRpYyBnbG9iYWwg
bGlzdHMgYW5kDQpwZXItZ3QtYWxsb2NhdGVkIGxpc3RzIChiYXNlZCBvbiBmdXNlIG1hc2tzKS4g
VGhlIGxhdHRlcg0KaXMgbm90IGluIGN1cnJlbnQgcmV2IGJ1dCBhbHJlYWR5IGNvbW1lbnRlZCBh
cyBwbGFubmVkIGNoYW5nZS4NCg0KU28gaW4gcmVzcG9uc2UgdG8gdGhlIG9yaWdpbmFsIHJldmll
dyBjb21tZW50LCBJIGNhbiBjaGFuZ2UgdGhpcw0KcGF0Y2ggc28gdGhhdCB0aGUgQURTIGdldHMg
YSByZWd1bGFyIGhlYXAta3phbGxvYy1hbGxvY2F0ZWQgcG9pbnRlciBhbmQNCnNpemUgZnJvbSB0
aGUgZXJyb3ItY2FwdHVyZSBtb2R1bGUgYW5kIEFEUyBkbyB0aGUgY29weWluZyBpbnRvIHRoZQ0K
aW8tbWVtIHB0ciBidXQgaSB3YW50IHRvIGVuc3VyZSB0aGUgbGF5b3V0IG9mIHRoZSBlcnJvci1j
YXB0dXJlIA0KbGlzdHMgYXJlIG5vdCBwcml2YXRlIHRvIEFEUyBvbmx5Lg0KDQpBcmUgd2Ugb2th
eSB3aXRoIHRoYXQ/DQoNCg0KPiANCj4gPiBUaGUgaW50ZWdyYXRpb24gd2l0aCBpb3N5cy1tYXAg
SSBjYW4gZmlndXJlIG91dCBpZiBteSBwYXRjaCBzZXJpZXMgbGFuZHMNCj4gPiBhZnRlciB0aGlz
IG9uZSwgb3IgSSBjYW4gaGVscCByZWJhc2luZyB0aGlzIG90aGVyd2lzZS4gQnV0IElNTyB3ZQ0K
PiA+IHNob3VsZCBub3QgcGFzcyB0aGUgcGxhaW4gYmxvYiBwb2ludGVyIGFyb3VuZCByZWdhcmRs
ZXNzIG9mIGlvc3lzLW1hcC4NCj4gPiANCj4gPiANCj4gPiB0aGFua3MNCj4gPiBMdWNhcyBEZSBN
YXJjaGkNCj4gPiANCj4gPiA+IFNwZWNpZmljIHBhdGNoIEx1Y2FzJ3MgaXMgcmVmZXJlbmNpbmc6
DQo+ID4gPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvNDcxMDUxLz9z
ZXJpZXM9OTkzNzgmcmV2PTENCj4gPiA+IA0KPiA+ID4gTWF0dA0KPiA+ID4gDQo+ID4gPiA+IEx1
Y2FzIERlIE1hcmNoaQ0KDQo=
