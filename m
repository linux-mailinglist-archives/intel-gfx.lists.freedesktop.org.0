Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE7D567D6A
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jul 2022 06:42:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CD0810F471;
	Wed,  6 Jul 2022 04:42:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A824110F471
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jul 2022 04:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657082549; x=1688618549;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=G41N5fQ9XXp5wdyDdpf+DVjcKy3nWyzojcVSmk3notI=;
 b=jEUKWPHilP2J/8KjsgmMJOYsYcQespdQYyu4N256IG8JNnLy6zFvkOoX
 SkRZz8GZh8kua7BJTiXIfd+gDXdUjpqsqjYI9nT+pr0r9UohcV85Yb2gk
 vyGgXhDfZjCm9xkqWPNXZepD66Jszqug+YQiRPTyx1Z3532OegI4zmijb
 1VKqXSPx0taw0EhyY9g1miuJZWRboq2tr9nxQjSgTIK1TEqb0rQR9belq
 52n4nK5WyrTO0F0AGfvsp+E+h/rsLNG9gHKmNr+0crvC6XTlVxvYR+xJT
 wUXJ9Hdpo9AGNHfBNJjtFKPsUaYyFn+yQXEOmgyOCf64Q2nQjG55J1bK5 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10399"; a="347624547"
X-IronPort-AV: E=Sophos;i="5.92,248,1650956400"; d="scan'208";a="347624547"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 21:42:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,248,1650956400"; d="scan'208";a="919988766"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 05 Jul 2022 21:42:28 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 21:42:28 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 21:42:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Jul 2022 21:42:28 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Jul 2022 21:42:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Iy2r8Lu+85g3o25aW9KoI/49BAaiaJk0LsVyPKhCCDTFsVGHQla30MMspVx+hiQRzE9MHyf7bo8jtbX5/wf7qQp3UoNCE/AoUPXnpXmx76tVL6TjJ11iYGpoRx0FIM4x9obzIXBw3uahe/EHtt6zAdStsrv9bP6mZSZ/zy3D5exSWZKI7GXflL6maAV3236aBtoAGDX5G82vg0jQDuKUVzHmpJc8Vtjg7f4YSncT0h+GQT1NdwMaFaoR3kUuUETs1Fpyx3VAyHNoMvcKp5vuacvQJzvXwU6bPfC1AA+k+EvsWNLG5v4H320wdws9DAI5WaGaKa3MS9o+Nh6ih9MAMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G41N5fQ9XXp5wdyDdpf+DVjcKy3nWyzojcVSmk3notI=;
 b=mxP34QGRPK1sYIJGVmlgeDGZWSq9wcXrTnAJLHdQaL2YzghZxOtPPmvW+h+tdvvWXTeth7tyWjHz3sp7cIAV9mfzYoGImQEFQ1mINAH/ivxmwMImRPWQJdgqq6pbzEq3XqzaPp0de9m+EPjKjX6g4RR0LBrgGhyZVXsS8IGuY5wWrtsinq1NbkabIE3lqnptzoCEchPd35RkCkpXigCKGCdaU0pv/zY7U7celiF9l0c1wYE/tg8H5poFdq4zIdtDepOx1WCFBrxO46iFYrWOVMje1XML65wNxWRN0JNMRLsXimTSYqfwVsGK8eghNWhu/FMgxn/5pzZC8/C4+mT38Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.18; Wed, 6 Jul 2022 04:42:26 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::f812:ea66:9a83:ad0c]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::f812:ea66:9a83:ad0c%5]) with mapi id 15.20.5395.022; Wed, 6 Jul 2022
 04:42:26 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 11/15] drm/i915/huc: track delayed HuC load with a fence
Thread-Index: AQHYfFek3HeX9Ghc40yMR09WlbY8fa1w7RcA
Date: Wed, 6 Jul 2022 04:42:26 +0000
Message-ID: <ac8517d9fbec73e49a1cac3fbc85ceec1dea7cba.camel@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <20220609231955.3632596-12-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220609231955.3632596-12-daniele.ceraolospurio@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63b48ec7-5f88-4aab-c733-08da5f09ed27
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: elGZbvxfczdbApkOcXNAQWlRo8PCiY4pqfMxHL4Mu9XFm0FY9TMKvunT5RZsbXxtr0D1zosYZkffAHhPslV98sQGA8n+X/UOFtJEr4R/Weh5//jOzxATj+pqyyRd3vH1xk3DDC8lrGjeTYzxAxMQ7w3rVqcml2/7NzuTW3XwUKSrju8vX6QbIOl5nVFXOjWWh4aQ3uSAzfA3+gynfMgKBkY1X3yQvrKaA4sVHZhGmdVQrvDB5sYyV6/LAfVmiaJzSgsSnavfFvdMZBiKu86PbilD6oHjgZINpjAtOmguE9GTht5QEOLUesOvPR6DCSeRwPSBxaIkNHCFY1Acve+eDibMm+0BH6MePiL3ggkPno9aewhw/X9k0OpZHiVkZlZLxTA4RSuQlHfqUYzPCHiY2tasmBljwV4ZuV86RzXCxxa0f0j6f+S/ltPQUT80zhcJJnhHhjuzYiTAOBE7amQ6f2vilELkLFbnIGq5GUC3sqOK8LU86bYlczrOVmXe2lU999fn/g4qpXku8VOm4edjsAfsQzikQlg+WE4uLX3/GH0Ccl5wboMvt515Wq+Suuk8v3nusVWGSbHL0gq7Z0nXREZWO+IwCE3+0HFxCXHWHLDaPn5DPLo/nFOSucBo0y95JaAChxgban+g+Tf5YJcxl7yGGwaoJknIEl1Pmc5jlz48sqfJm2GVtXo5/DD89lXp+eWYnRV7WyJJhyx2Lkz8QVck3+XTWohu2CbzXVkWoMxUHfJWaxBp7ZEqGwbKy5OlRGkGE58lgkB97fFyeSLktlRc6GIS/YkEwd7CHEvdyGTCrnm6VcS7rFnHOJyMH8QN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(396003)(39860400002)(366004)(346002)(91956017)(2616005)(6512007)(6486002)(110136005)(316002)(186003)(36756003)(38100700002)(66446008)(66476007)(66556008)(38070700005)(8676002)(64756008)(71200400001)(41300700001)(86362001)(66946007)(76116006)(8936002)(83380400001)(5660300002)(122000001)(26005)(478600001)(6506007)(2906002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UW1DVldwQkFpUnNBM3JNdVlVY3RNajBQL3I1amZMTys0aXAwQmQ0c21jZGlT?=
 =?utf-8?B?OGNEUVZJZDJIb0kxMXhjWEdwSC8vZVdpNnZVVmY2dnFSN1lUWDVsb1ptWlZj?=
 =?utf-8?B?OFdkVE43MFczNFRRak0vNUNLcjdBOUdXQXRtVmZSU1VvcTF3RmV2cWMvVWlZ?=
 =?utf-8?B?U3BMTTJ0WGRiQTlzZTBPWEg5OEw5ZVFrSTViTUJxcnFiQkxic0JCblpVQU54?=
 =?utf-8?B?MjB3ZVU1UGdZSGVKTUlqNXk2enpoR3oyUzFqNDNOKzZQbGdVUlM3TEkrR0M1?=
 =?utf-8?B?bUJJd2gvaTBWK084amxjQitlVUZHbHA4QWVCaWtmOXRYQ2U3aXhZL0xpT3Qr?=
 =?utf-8?B?Q1ZuY2JEODVvSGVxTjdoUHhIOWRkSWpYYUYrNE9jaE9OT3JzZkdDYXdYRGxP?=
 =?utf-8?B?SzFwdS9QQ2lIa25iZlBSYjd2a3VPVDB3RnRYTlJrZ3pJbmltSUlqTHVySVZ0?=
 =?utf-8?B?Tk00ZjZZMFo5eGROYzY0T213RGNsQjZJcndjZ0FkcGliZ2dKUXRPMDNUR1F4?=
 =?utf-8?B?U01McHlIdjkyclVMd3ZwSzFBWlEvUzhROGFMQThpVDdLQnRvOVRlNURzM05r?=
 =?utf-8?B?bXh4ckNvZ1lDMlhkS0dkMTg3YlhTUUZGazRKck02ckdtdS81MmVVZ0JmVlFo?=
 =?utf-8?B?YUdlMFFTVXZOeWlRQkxTS3cyRHVJdGtSb1cwL2FjNkhBRnM5QkJBdWppejZ1?=
 =?utf-8?B?YmJRQ25sZGtGem11L2dsbG9JZHhQWVdxVlUzL2pGY3JTLzVqVmhiMnFTTm5j?=
 =?utf-8?B?dWFtNkxxMVJyeGx5cDk4dVhsNUI0V29BRjJGeWJGbnV3Y29KTDRTdjJwZ0o4?=
 =?utf-8?B?eGFWZUxCOUY0RC82VjZ3VEFNdC9adDBMUXdWemZoVDdsYVNlMTl4bFA4aTRz?=
 =?utf-8?B?UUJXVTlIV09XWG5yS0x3RUh0MVI5TEdVN2xIek50SWdtRU9QbjR5TmhLcnZM?=
 =?utf-8?B?bE5CTFFMeC95amxBUHBVb2pBYytWMmg1UnhvN0hwVG1YTWNmRlorN0k1SGc5?=
 =?utf-8?B?TXN0eFp2QkMrRzB2V25JemxIQ0RlOXk3cmxFajhTV1BUVm1waGlibnNLTUM1?=
 =?utf-8?B?Qk9OaEoxZUswejFSQTJaNzNwc00wbTU3YWZ3QWg3S1lzSFZaTzN4c3FEcnU5?=
 =?utf-8?B?QTNhNm1Ja2RIMjdxQ21ZaFhDNU15dWJ1NUtYdkxvRDY3OWE0alhOYWhZcC9G?=
 =?utf-8?B?cHY4L0RQUzd5cjA3TDhBbTNHamFYUG56UW9RRjY5TnJGRS94TVBXNkRXR3VE?=
 =?utf-8?B?dFRLTmdiVXh5MDRZVUt6R0FGc3llVXpjQUp6UXFJam1ZSnZyaG9PMnRvNnpu?=
 =?utf-8?B?L3FWeURrU2dvcm5CTVo2NUJBSGUrcXpuTG4xUzVIYXppM0pOMmo4ejJkdXRx?=
 =?utf-8?B?NWI1ekRyejdrVVlCU01FMTFQWmovWWx2dVVHSHhScVlzb0prUU91SmJTNjNQ?=
 =?utf-8?B?eE5sRklXTE91ODBFK2VLcFUxUDJWbFoyUi85bnRzekJid2lyK0hzbVBndXdm?=
 =?utf-8?B?bXdEUmJ0eVp3WFdzQ1RzTXVPcmY2MFZ0ZmFoeWpzWHY4elozTEljaUk0YUMx?=
 =?utf-8?B?cFBLMXFmbUNwR2J0T095UUxjMU5McUtnV0s3N2gxNjAxU0wzc2ZJVGd5Qlpi?=
 =?utf-8?B?RmI1c2F3R3BrSnMwNVYyOGlMSXRQTjkrVVh3YVVVdXVZOTZ1a3hKODZKSXQ5?=
 =?utf-8?B?dmlwUS9JRmp4L1h5WTJBTlBqOHc1QkJnRW1VV1dDaHRLSmpjQVBlTVlSVGZK?=
 =?utf-8?B?S0djZzlua1pFcEN0cjJFUTdidlRFb3ZxOERUSkRnQkJxNUlTQ0R5SWRFK044?=
 =?utf-8?B?TGpCRVJRNXBHTGZRY2VQc0lFWklMR3lxZTZ6TEd1UC81emZpYU11MFF0K21H?=
 =?utf-8?B?bTNQaGF3R3l0dHIwbkxxb2pyWVJrcG1EUVlBOE44ZWkrSTNOSjVCMUMvcXpr?=
 =?utf-8?B?WlVid2psWTVQay9QcWJGSnIybzJMQzc1RVY5bjE1M29hMWxDK0JFZy9rTnBv?=
 =?utf-8?B?NEpUNmw3Z2VuWndVWEJZSjllS016eTZ5S2p3OG1QOHRacktFN2ZvYTVWY3k2?=
 =?utf-8?B?VndYMVFNcGJkekUraklXUTgxeDM3eEQxNC9RTEZPR0FPVUV5b2x3cHBpK28x?=
 =?utf-8?B?bndEYURMV2haYXpxQXhPRStJdGs3NWZocDNsT2tvdXRpNXNGdTJFUTcwMnpG?=
 =?utf-8?Q?jTE+Kt1YEf9Tww8iaF1+5D/V/H6wYOBLZeN07qXxm+dp?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <503EAAEDF79B0F469C0CEE558CA75E6A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63b48ec7-5f88-4aab-c733-08da5f09ed27
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2022 04:42:26.3873 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mVqXXXX570T9gxfmzA2ma+2bPReRopnjSqEsFMomY/7Qcyd6nOCV5IeWLImiUaRZs6Mi/+QQi4GzGxdLpTi3siRwDtpcA3qDPvOTlsLQOO3XIUxyq7+lqnhFvqr19xVj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB2054
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/15] drm/i915/huc: track delayed HuC load
 with a fence
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

T3RoZXIgdGhhbiB0aGUgb25lIG5pdCBiZWxvdywgZXZlcnl0aGluZyBsb29rcyBpbiBvcmRlciBh
cyBwZXIgaW50ZXJuYWwgZGV2ZWxvcG1lbnQgYW5kIHJldmlld3MuLi4NCmJ1dCByZWFsbHkgd2lz
aCB3ZSBoYWQgdGhlIG5pdCBhZGRlZCAtIHNvIHdlIGhhdmUgYSBzaW5nbGUgbG9jYXRpb24gd2Ug
Y2FuIGJ1aWxkIG9uIHRvIGdldCBhbGwNCnRoZSB2YXJpb3VzIHN0YWdlcyBvZiBnc2MgdnMgcHhw
IHZzIGh1YyBvcGVyYXRpb24gc2VxdWVuY2VzIGFjcm9zcyBodyBnZW5zIChhdCBsZWFzdCB0aGUg
Zmlyc3QgDQpnZW4gd2hlbiBpdCBjaGFuZ2VzIHJvdXRlKS4NCg0KDQpSZXZpZXdlZC1ieTogQWxh
biBQcmV2aW4gPGFsYW4ucHJldmluLnRlcmVzLmFsZXhpc0BpbnRlbC5jb20+DQoNCg0KDQpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuaA0KPiArZW51bSBpbnRlbF9odWNfZGVsYXll
ZF9sb2FkX3N0YXR1cyB7DQo+ICsJSU5URUxfSFVDX1dBSVRJTkdfT05fR1NDID0gMCwNCj4gKwlJ
TlRFTF9IVUNfV0FJVElOR19PTl9QWFAsDQo+ICsJSU5URUxfSFVDX0RFTEFZRURfTE9BRF9FUlJP
UiwNCj4gK307DQo+ICsNCj4gIHN0cnVjdCBpbnRlbF9odWMgew0KPiAgCS8qIEdlbmVyaWMgdUMg
ZmlybXdhcmUgbWFuYWdlbWVudCAqLw0KPiAgCXN0cnVjdCBpbnRlbF91Y19mdyBmdzsNCj4gQEAg
LTIwLDE3ICsyOCwyOCBAQCBzdHJ1Y3QgaW50ZWxfaHVjIHsNCj4gIAkJdTMyIG1hc2s7DQo+ICAJ
CXUzMiB2YWx1ZTsNCj4gIAl9IHN0YXR1czsNCj4gKw0KPiArCXN0cnVjdCB7DQo+ICsJCXN0cnVj
dCBpOTE1X3N3X2ZlbmNlIGZlbmNlOw0KPiArCQlzdHJ1Y3QgaHJ0aW1lciB0aW1lcjsNCj4gKwkJ
c3RydWN0IG5vdGlmaWVyX2Jsb2NrIG5iOw0KPiArCQllbnVtIGludGVsX2h1Y19kZWxheWVkX2xv
YWRfc3RhdHVzIHN0YXR1czsNCj4gKwl9IGRlbGF5ZWRfbG9hZDsNCj4gIH07DQoNCg0KTklUOiBJ
IHJlYWxseSB3aXNoIHdlIGhhZCBhIHN0YXRlIG1hY2hpbmUgZGlhZ3JhbSBmb3IgdGhlIGh1YyBs
b2FkIHN0YXR1cw0KYmVjYXVzZSBvZiB0aGUgcHJpb3IsIHRoaXMgYW5kIHVwY29taW5nIGh3IGRl
c2lnbiBwcm9ncmVzc2lvbiAtIHdpbGwgYmUgbmljZSB0bw0KaGF2ZSBhIHNpbmdsZSBwbGFjZSB0
byBsb29rIGF0IHRoZSB2YXJpb3VzIGZsb3dzIChhbHNvIGZvciB3aXRob3V0DQpkZWxheWVkLWh1
Yy1sb2FkaW5nIGNhc2UpLiBTaW1pbGlhciB0byB0aGUgZGlhZ3JhbSBvZiB3aGF0IHdlIGhhdmUg
YWJvdmUNCnRoZSBkZWZpbml0aW9uIG9mIGVudW0gaW50ZWxfdWNfZndfc3RhdHVzLg0KDQo=
