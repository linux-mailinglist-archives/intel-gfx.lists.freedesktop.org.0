Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9427E33339E
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 04:09:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D9D56E9B1;
	Wed, 10 Mar 2021 03:09:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 767AC897E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 03:09:28 +0000 (UTC)
IronPort-SDR: oEq3a34So7F677fMrJwq0h0snN2VtF86DeOnRas2nnhl7nsz+zMnj1GgPFVFcEWsD7irL0SFp3
 2v0Wk2BteJ1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="185993317"
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; d="scan'208";a="185993317"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 19:09:27 -0800
IronPort-SDR: CC4HQmHW+1EC4SG7B3Y2OMo2WPQU2FdObWDqWtnEXj6wkrCAcdeEDYIoJlPx+OxeU2pFFI8BD6
 if73WX55ZMPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; d="scan'208";a="408898879"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga007.jf.intel.com with ESMTP; 09 Mar 2021 19:09:27 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 9 Mar 2021 19:09:27 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 9 Mar 2021 19:09:27 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.58) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 9 Mar 2021 19:09:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=neNwiTGvn3cg62/q+JCb/WH91bzbcmnSFcttOxakszkM18hFpVSUs+6zsmE6k9KjlFSCWYnY/duIgswc3kjAt2+BeG68pIYsgyc0YZOeaRCkLHsIwN6Qluj46JbfvvHu68bY2pYmBt8h1ezMnE0BNCpo8r7uMZDzO0cqjDs8cMAf424K5x25XGaFskUpandu4HcqgOzfyf3YXiaaw2YN2MCIYwq6Yq1rHi5sSA5j46StaxK7Xv5vIMJpwG2WOXIjFSi4bkxtS+dq37BGHHU5lVIu25fHjyl4Z4SNd7MMotHbw4urVDNvLSiFNvRihEnSJk0V2Vbl+Xg1Q1hdv7LYgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k1OugIFE5Y2LC6X94KUIaYl0QDVp38F5F8//qrhjHpo=;
 b=FxElQpy/4qHZJUYG0j45ErzLexiE0aPJldzgHupo743UmN/OGGUvYtAhuVGR6TDY+kdsRYhOhQVzS9JX4kqjfKRH+j7PtsGgLZXPMM8Rmn3gSKt/Pjy9IAXi2HQtpyJrGB3F14WXKBVEHV6/oxzwqPVLSuOdTktIf1512kS0DzzspYCZvK7oYN+tKQoelsdCcTHM9lYmI88N6o3vwBIRc/6We8KKVyqmaDZ2RxmVZlRdaX5Nxkma9kPBT+Ttirk0PWVmUC3EXoYG2EabsOsBU+rkUQHetwZ49HoOAzXlBPK4kZHCzyFjEgkA4kcYiRXiCtWMz9RSJ3/fYa+uePECYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k1OugIFE5Y2LC6X94KUIaYl0QDVp38F5F8//qrhjHpo=;
 b=Vg7pIkMwgXZIhFVoP4dsdfAWSfiE8wTDLhuJlx9FCPjgvBpBSuXtIGXCIeyIBDJ4355YQ1MxxNYz4Mytc9UMyKCLV/EYw0aBbA4p8UaUZtLnKQ4zUoIYhgCv2nORIEuHX+q1iIBXMclHbE4xL/f8ZCZpFpQMlWfhGXJXm7vUs6Y=
Received: from SA2PR11MB4969.namprd11.prod.outlook.com (2603:10b6:806:111::12)
 by SN6PR11MB3261.namprd11.prod.outlook.com (2603:10b6:805:c1::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.27; Wed, 10 Mar
 2021 03:09:21 +0000
Received: from SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119]) by SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119%6]) with mapi id 15.20.3912.030; Wed, 10 Mar 2021
 03:09:21 +0000
From: "Chiou, Cooper" <cooper.chiou@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [PATCH v5] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
Thread-Index: AQHXEcGJyUOl5WJaWkGefsU/tiq3vqp2jqfggAYBk6A=
Date: Wed, 10 Mar 2021 03:09:21 +0000
Message-ID: <SA2PR11MB4969EE9AE3F548B5E412FA469D919@SA2PR11MB4969.namprd11.prod.outlook.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>,
 <20210305125835.12207-1-cooper.chiou@intel.com>
 <626AB9AF-0562-4D7C-A688-DF67835BF322@intel.com>
In-Reply-To: <626AB9AF-0562-4D7C-A688-DF67835BF322@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-originating-ip: [123.193.93.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b42afb52-65b3-4b33-450b-08d8e371e6b6
x-ms-traffictypediagnostic: SN6PR11MB3261:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB32616A5C73F10C85E459390B9D919@SN6PR11MB3261.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RHdjGEIi5tJa6FI+c469Cp1NHrUSxCYwWUVbDf9UIepTb0p1t3cON7cuOnOwVEslVGG853a8eFdcXfMZ6zpWGjrwyZ0Fe+Q8uwHuQCGH5b+Dcq0Ybdf1kBEYycyFKHKYIT2l/zY54Xi3mhj9LyEf38qbEFJaNplxbiQp6m7Zvz8KOKv/aFVxt90ein+ZWLbVu2tcCfF/tS5xE+3Mg9O6TcHwcx4yw/ILrC3z/v8O2/VMUB4BuNEP3GyD0db2JpU3zcKLyLBhPFQzTnl9xKcOP0yobByMR+rrKSLnT977V5jzYHYJWODZ3krhcuJDWNokMStnIM4Adg82rirFrxjZQSnFrdvsxJG05lOt67k7eGKcgxaYtzWmwW0JkSqI6myQkbO0ITQnNyvwAPQiI9lvHT08p81WnZ9hxETAbneYujFGNnQfSab3FahZ/OJmW4QwE9Vc0LGt5jLLYijEEpztKpAZNHsbHzzUv3egnVL3vzsa4+4tiUSCEKM+U//k2h5I12u/pOzfxYY49lkVLWnkghWwbY/8c1TmPmnTN9gEhUZaML3DLTA4kWCaVA/iChOQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4969.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(6029001)(396003)(376002)(346002)(39850400004)(136003)(366004)(66446008)(6506007)(9686003)(76116006)(55016002)(7696005)(4326008)(52536014)(64756008)(66556008)(478600001)(66476007)(71200400001)(2906002)(66946007)(5660300002)(110136005)(54906003)(86362001)(33656002)(83380400001)(26005)(8676002)(316002)(8936002)(186003)(213903007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?YjE3T0x3ZmxkT2o3UFpCWjEybWR1V3FTMmtENUZsRWgrRXJvUGh1QTRESE85?=
 =?utf-8?B?c09hSFA3QktXZCtqR3IzNVd6RWJlNkk2L0NtQ1JmS2RvcVcvK0U3a2Zuajky?=
 =?utf-8?B?dDUvUURRL3d3dDFMNGFpRlloa2Yzayt1cVo3VTdIQW85TGp6SWdFdVlFU0l4?=
 =?utf-8?B?QThqU2VyTXQxbHI4RlczL0hZY3dDczA2RE9FNGN0ZC82UlRocFNQT202bnlS?=
 =?utf-8?B?cHVzc3kwT1hiMnliSGxMV3BBL2hIeWNGSGtaWkw5bm1MTW5MVjUzV01WZ3BV?=
 =?utf-8?B?eVM2S3lvcVE0VG0ybmhFa1laR21oOXorQkRScWJRcnV2UWFreDhRK3I3MWkv?=
 =?utf-8?B?cnE0ZWd3eGZmZUI2T0V3VTdVbFBFd1ZuWjJuTFdlSTRrclFEM0FNTEQ4TG5i?=
 =?utf-8?B?SlVGRUMwUDliVmc2SllYQ1VXUmU3cWdkRi9RWStFWVljL1U3TytTdnAwdm1P?=
 =?utf-8?B?NU1SRSsrSy9lRE5kRnZJYW1CY29UVTdVYVZWZW9uemRTZUU3MTZydjkrMTlk?=
 =?utf-8?B?ZkxvbTBxRlZGTDNFUlMwMVA1SDdlcHZuM1laWERTbmM2emNLUlozWUtVRk5N?=
 =?utf-8?B?ajhpNzF3MVVPcEpvTFh1VG9MeGtPY0NEeXM0N1RMaDk5MXRGNWQwN29UbElo?=
 =?utf-8?B?RC9wUjFwQ1RJT0lHVXFVQ2lEdzd4eFo5aWxZalhQOGYxNG9GRWFSdy8rdXdu?=
 =?utf-8?B?ZjdKa2R3NHo4dkVGM1hON1Vmd0l2Z2xOcWxkZlZBYm1JQ1VNR3grNmNwMWYy?=
 =?utf-8?B?dEJqdlhuWjJzeWZac2pYVTVWWnphcjlWdXUreHUzMmZyaHZUdGhYaUd0WThD?=
 =?utf-8?B?dVF6aG5Idi9zdnkwa05tNEVWbmlXdjdkL0xkT3hTZjZvTTNEb3JMNE5YVS9u?=
 =?utf-8?B?YTFwNUF2emp5b0J0cGZxcldWQXhzT1E5c3BoVnp2VGZ0c0lKSk4xcnVORnE5?=
 =?utf-8?B?ZWNiUHVWRTQvUmVhOXpMT1dVUVpNM0RlM0xycW5mZkhOVmdvU1J2RUowajFM?=
 =?utf-8?B?bWppbmFHczEydW1iZi9JQkY5OU5RNjIxTTh3WWx5REpSZ1did3IrbzNXUGs1?=
 =?utf-8?B?bnY3MHo0ck1sMWxMRWRmUUt4RXBYNW5OQ0JlZ0tpOTNBYWZ4SllHRkdHRlZ2?=
 =?utf-8?B?T2NRSlZ6QjQxQitsYW9ObXdGdHRYdHhBSUIwcERlL2FqSG1ydU9ibmhkZld3?=
 =?utf-8?B?V1hnRW50b2ltb1dmbzM3Z01ZLzBOWGY0Yzg3Zk9aUnlLMDZDdnFEZDJLQ1JJ?=
 =?utf-8?B?eU9OZkVrTXovU1EvSzk1eExCZkEvaUZOZnR0Rk0yQUtPaEpEUXpDenhzdXVI?=
 =?utf-8?B?aGdjcjJRSTNQbjFaM2dxMUhpOE5nbVF1MTRjbXJrQ0t2Q095SzJSYkdwanV5?=
 =?utf-8?B?RXlnaWVJV2V1S2lSbkRNTjVoaUtiTXJUcmpnQjRvZ05sQUFTNEVQUVBlSnk2?=
 =?utf-8?B?L0xDK05QUnhlZi93cVd1Nnd3Um13Tmo4Q0xSSHBmZHpxU0VzY0NGNndYSjcr?=
 =?utf-8?B?aTduL2ZSMndjdlluc3ZDRmF3cTY3MW1TOENzQ0RJTlBiVk0yZ2QrK0lDdjdM?=
 =?utf-8?B?WFhZeWdvaE5Sa3hHUjM1eUM2OXZOZ2pNR0lCbmVLT2l2MUw0YVlFSWJwMU9t?=
 =?utf-8?B?UkRNbFlZbjRsZ3JMUXFmczVpdzQ3U3d0SjArSHZYTGkxRmlrS0ZGRTJHdndx?=
 =?utf-8?B?cUo0V0k1Z043ejU1a1piZUIrRkJDdFZjb2RmUXpEb3dDMXI2L3kzbm5tWlFu?=
 =?utf-8?Q?tKPloRRJMbtQt6EPlRV8gieLfVRWKQh2Y1LO9Mx?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4969.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b42afb52-65b3-4b33-450b-08d8e371e6b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2021 03:09:21.3155 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sYqhdPkV7irlHpgb2X2QcSF2PkkExcDrjCfr9oe77VXv0wldo5TOGADHTr5ZZV4zAaRmAwMxatWfD6/5+eCNoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3261
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
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
Cc: "Tseng, William" <william.tseng@intel.com>, "Chen,
 Rong A" <rong.a.chen@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I've tested on GLK, KBL, CFL Intel NUC devices and got the following performance results, there is no performance regression per my testing.
and CI build test has passed as well.

Patch: [v5] drm/i915: Enable WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
Test suite: phoronix-test-suite.supertuxkart.1024x768.Fullscreen.Ultimate.1.GranParadisoIsland.frames_per_second
Kernel version: 5.12.0-rc1 (drm-tip)

a. Device: Intel NUC kit NUC7JY Gemini Lake Celeron J4005 @2.7GHz (2 Cores)
    Without patch, fps=57.45
    With patch, fps=57.49
b. Device: Intel NUC kit NUC8BEH Coffee Lake Core i3-8109U @3.6GHz(4 Cores)
    Without patch, fps=117.23
    With patch, fps=117.27
c. Device: Intel NUC kit NUC7i3BNH Kaby Lake Core i3-7100U @2.4GHz(4 Cores)
    Without patch, fps=114.05
    With patch, fps=114.34

Meanwhile, Intel lkp team has validated performance test on lkp-kbl-nuc1 and no regression as the following.
f69d02e37a85645a  d912096c40cdc3bc9364966971 testcase/testparams/testbox
----------------  -------------------------- ---------------------------
          %stddev      change         %stddev
              \          |                \
      29.79                       29.67
phoronix-test-suite/performance-true-Fullscreen-Ultimate-1-Gran_Paradiso_Island__Approxima-supertuxkart-1.5.2-ucode=0xde/lkp-kbl-nuc1
      29.79                       29.67        GEO-MEAN phoronix-test-suite.supertuxkart.1280x1024.Fullscreen.Ultimate.1.GranParadisoIsland.frames_per_second

Hi Tvrtko,
Please help to review this patch since this is urgent for Google Chrome KBL/CML/GLK projects.

Best Regards,
Cooper
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
