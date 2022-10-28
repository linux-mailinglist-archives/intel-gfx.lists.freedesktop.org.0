Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 879296113E0
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 16:02:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DABA510E846;
	Fri, 28 Oct 2022 14:02:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AE9B10E841
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 14:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666965738; x=1698501738;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=d9q1a+PY8dwGdeuAdJgRl3qhH6HtNnOWhazI7g5q9uw=;
 b=c0Pp96cYNfyU9InBtHro1n8aEuFga/nKd5Lv8IIrohBSAaB8cK/u+w+M
 hIZzfZzox9i2YvgbmDCo/tsG5L/fEVCqRB1v0hwu6sNIqth6NKeIEm8tl
 25vsaJnlinHdsyawUJzoYqu43zap3s1qlWxQNmczW1sYWmnxS+AmTxPo0
 LV5cv36ifCIDMMgBUDTg0XlXdTEKXkKAPTt2TEKYVjSNqEaBSTgIX7LPp
 J5Ynfdt1+Lqnpu469GRyzyOBh9JT+AJpvc3aAurSd+cWIGtxS1xwBSswc
 haccPLKRVYJQKtEDE0etM4QjqSU6dptIIilv8SUw5NOLoFT/1yVkpIcz+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="306104182"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="306104182"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 06:55:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="701736894"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="701736894"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 28 Oct 2022 06:55:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 28 Oct 2022 06:55:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 28 Oct 2022 06:55:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 28 Oct 2022 06:55:20 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 28 Oct 2022 06:55:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VlHqDCuXrGJIwlvBhNe8a3mmd4GSFmwL8A5KWfeMXt1ZKlR9y6q4J0D1w4ggnh1eGk4tXYUKEO2bmrsyTYo40MwTbkUX8bUvDAFX24zPQW38IvPm4hsuBvIm2NTAqfPG0POwZJ30Hm7Ci1oWuGQNswr2rGpYcsiSJyVlH/jSr22ZjCfTll/deKITV2sZO1MpLtfeVCeBNLv17Nrq6GGseyJetHc4ZRzRJXdqrHdhbf+csQZx7tqy5HXBygCVE0+vOdu3frN01tqbsBICVo+mi9ZtU9T8QBhZo5d9LgzbsVFPGhT864Wa8WqDf9QRSRnhOXLrQS7ObxmZNAG2xBxndg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d9q1a+PY8dwGdeuAdJgRl3qhH6HtNnOWhazI7g5q9uw=;
 b=UyOv8lpTOJXNE1q6ga3hHRiTWdkw+i9dfX/ts9en5HDmhGKrr/aOPwh8pDJqg9IQbB07AmngP0RA0SLaEloB1obaR/gQ/+PXT9iMA/Dkp/KkCQgmssEW0UxjIXm2O6b8cJMUVECRfQWPMDrw7qvixVvKDaCNS8ZQTg6LGb6VOco+miQVLaoO8lsrZdjkIOuqLpo3IJeeEZ02+7YOH+SMoxkmJnTQsJQ/Bb/itpWOEyp3lSbKzqgSsX+7HwcRIeEf49t3Gc935qtSIYZ1vCW3Pr+aXxUSU+z8TC1Lqv+7T8NNe5XRl4eC+FZHa55WorOnnpUm3DPcp1GlLc5VybY5HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR11MB1324.namprd11.prod.outlook.com (2603:10b6:3:15::14) by
 BN9PR11MB5324.namprd11.prod.outlook.com (2603:10b6:408:119::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.14; Fri, 28 Oct
 2022 13:55:19 +0000
Received: from DM5PR11MB1324.namprd11.prod.outlook.com
 ([fe80::793f:3870:4550:8aee]) by DM5PR11MB1324.namprd11.prod.outlook.com
 ([fe80::793f:3870:4550:8aee%8]) with mapi id 15.20.5769.015; Fri, 28 Oct 2022
 13:55:19 +0000
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/dmabuf: fix sg_table handling
 in map_dma_buf
Thread-Index: AQHY6hjjuFTz93JsY0ihdKgKWa+XF64j1Fgg
Date: Fri, 28 Oct 2022 13:55:19 +0000
Message-ID: <DM5PR11MB1324BAB477F97F8640564837C1329@DM5PR11MB1324.namprd11.prod.outlook.com>
References: <20221027152723.381060-1-matthew.auld@intel.com>
In-Reply-To: <20221027152723.381060-1-matthew.auld@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR11MB1324:EE_|BN9PR11MB5324:EE_
x-ms-office365-filtering-correlation-id: cbed9863-f824-43a6-a7b8-08dab8ec0cb9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nZonh7puUVU3qtLycldJE1rbbhyqIRpeS2ZhObEnYvB7BbuJhMClVIhdPQ2qs7Ei2Peper1dLmv6QYz88tQUGCcGvaCJCdS3qJ/SKIeix+v3bAcTcfTX/yGlJAFHYe5KGTCwGbG9UTS/wijDgIxjK93jAw30HI+OxJA6dfrrdQhwSpdfh0DIWV4pz8++VPxHebiZpgd6O+sCGEDgIhZPZPbla1x9Zczgwrl67zSJY8SrWvdgFLn3k/KUW9i9zmXBWszN0iZ/VE3lJ9IoMW7M5RpxX4+IWVrtsV1/fYZ//qWspT3y4ywZ5GEHGKy1Dwz824hvXHIRUCaVhfzfXXz0tUGUfPHrSB7/80VYFIKSXUJL3FKmmzgV/FXffXUnGv+VM+0e3o3VjcdavJvaNQ/vdc0fVjkHhNziWAEUP3CVeCBDsYYp+EheRGLP+3n1GvPaY9u6eKvuyCGrBXy5DsCZmBHAkc8EWAjR336ZCXoJdCXgECcaL2foE7rsbd3O1bcsSlekVHK35L/uvKA4aaluY4bfU8y8yDBML/lnkrOkmq9PH848nmZVP4p3UUGqXji/GN45MIdqgKbm0Msrn++Meg4VzpPjZD6b+V7AK8CPuMP42r3i3s0iJh57pklzyP2ire8q+tUlLkkD7EobFenRMol73vDHH9eTWcDjv4bx+uVaeNMnExTdRxE7+tfPDN3JEhoFaDH2E7Jtxx1qp9qLWg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1324.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(136003)(346002)(366004)(376002)(451199015)(316002)(66476007)(110136005)(55016003)(33656002)(52536014)(5660300002)(2906002)(86362001)(66946007)(186003)(8936002)(6506007)(8676002)(64756008)(76116006)(83380400001)(26005)(9686003)(7696005)(66556008)(66446008)(82960400001)(41300700001)(66574015)(478600001)(122000001)(38100700002)(38070700005)(71200400001)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Zk5HRU9jTTdmNVdOZUFncjdPenJSVjJuUWg2ZVFKampWRXJQWXdLcGhRVllB?=
 =?utf-8?B?NXRnWmVMaGxndW5kMkxPbXR1V09OSTVlSUxIcWYxMFArTnRJMnMxUUhpR3BW?=
 =?utf-8?B?QUtMK2M4YXg4YS9XbTZPVnkvUGxiVG1VYm9oZ1laZGpBTjliTlEzS29Jb1ds?=
 =?utf-8?B?UmZUVTk1Rmc4VmxHRDQwTmpPOWtJay9GQVlUc1Nvcjk3QmpBcWJNUjZJblJa?=
 =?utf-8?B?RUtqRGNORXFTYTEvOVhpOWN6RS9PRnFCVCtKZGZBdmxiU1UyQVZxRHdjNDZY?=
 =?utf-8?B?VWVTRUgxb3NqWlZnSnV0L3VyRGRvRW5VV1cvNW5tYnBjeTFISTRZSGxocEpt?=
 =?utf-8?B?WFlzMEZidFRndnBWdGdHTVJMV0xnZ0pXbE5WQzhxdldJekQ2bXpUWUE5bE9L?=
 =?utf-8?B?M2JBYmpJZ1k3OEd0Mm1GVVpBb2IrL3h3dHZOSTR6cVFxUFk0eDdLSXVTSFBn?=
 =?utf-8?B?c3Y2SGQ1QjVITGxzTE9IRGdYckh3VGtjWHYvT0xsTHlJeHROSEF5dEZzMlR4?=
 =?utf-8?B?YVA1U2xNejdxUENuVlpoV042YWtua2h4V0tMTUJhMStxUEJPRUFnUDZjRS91?=
 =?utf-8?B?clVhRTVvdkxqeFhrRTdWRDlxN1pWTVpabDgxUGdYZU1JRkxWM3E1ZFdZWmgx?=
 =?utf-8?B?bElaTDE2WjRZTXBUVlVJeW9yeitIREhVc2F1RkJ6ZjVvTFZhTTcrRUNpUlho?=
 =?utf-8?B?NmdIYXpzUUtmdTBhaW5Qa0l0QWljN09pNDMxMUJEb3ZLUnd6VE1INlpPbStk?=
 =?utf-8?B?UE9MRDI2Rmw4dm9FSFNRR3dXZlgzaDVETXZUdUxFTitHU2MvRjdmZjc5aFho?=
 =?utf-8?B?VUZYZnZDdVdaYk9nNWRQSFV1R1RGM0JwY1d5WEFJR2d2TVBYeXBMYnVuNUFN?=
 =?utf-8?B?bnFmNWZBRVloMHN5WjY2WGNVR2t3K3pnUGx4a0taLzIzSGtVUHUyajZUSjUw?=
 =?utf-8?B?ODNwb0dLSkZnR3dBMWVDazhtNWVCU1FoTDBXODgwWmc2MjZKdTVQL2d3ajhV?=
 =?utf-8?B?UVpOMzVmTXJWZ1BNZnkrTFBmSFdzRDlsWXk2VHA5U2RRUEZVYjdVMk82K1Fk?=
 =?utf-8?B?LzJ3c0FJYTlWRktnRGJQUlZITWJTdWo5bmxNd0xpNHBtTnVxVnY2aTh5WXBR?=
 =?utf-8?B?Unc5MTlGa2h5MjlvcXNjT3V3WEJtd1J0L0RtY3lvd1lPeDgyUDlHb002czhy?=
 =?utf-8?B?UkM2czIrRzNqYlRvbmZETFdrOGV1UGMyOVlFTkEvaktVU2xhZHZMOTJsdlph?=
 =?utf-8?B?ZW9iOVdoS1Q5VDN6NXJnUTRJeUF2N2pkemtkRlgxMVpYTkswKzNyWE95T1Fi?=
 =?utf-8?B?akhUWWdGTGZtZ1ZuS3k1VWRrZzRlM2VQNjVCbkZHVlAvN0NRM3RocEQzVlBH?=
 =?utf-8?B?ZDNMRm9PT3lwclJ6bnVMZDFWb2M0V0JVb3YwNlI0VmxRU1l0TUUyZGQ4enZ0?=
 =?utf-8?B?cE9HMzVSTVFFQ1JGd2tjZ01wRUJsdGlCdXNUbzM4TnRHaldLR2dRVWxNQ2lu?=
 =?utf-8?B?Si9YMkpMQjFMUEZ0OFJVZDJoNFcyS0M1WnFxRmREQjBNdUlROEFEZFY0ZVMw?=
 =?utf-8?B?d3NPNjB2U2RRZyszV3djTkp1OUI2aGx6VzlYOU1ObHV1SnRjdWJsQnVjcUZD?=
 =?utf-8?B?WFVWMVpSc0Q3VFRGaUt5bXUwb2FZTE44bkZtbFoxUENXd0dqVUo5R1RWckZL?=
 =?utf-8?B?bHdvdCtJdTgwQzZBSE83WmlJZzFxZExHWlQyeVlmMk1Ha1I4VlZ1UWovQVhY?=
 =?utf-8?B?aWNPeVNkUjJRcThuWWdPV2V4SkljbGszczhBVkxCSDVPMmpZSm5mZXFQUHZx?=
 =?utf-8?B?NjAyUmRzbXN1Nzd2NUVqUCtDNEFSdCtLYWZjTmFwZlRZRjV1amZCU2hpTjN1?=
 =?utf-8?B?L1pyUUNNb2FxLzgzVTllQTBFVEdHeFUvVGZFUEZ1enpqTytmOXVJbzJhaERJ?=
 =?utf-8?B?SktZSTM1UUFTQWlGUGc0ekE4ekZ2YjlteWgxMEI4Um9RSGlma3BVSXJ3d1RK?=
 =?utf-8?B?RkV1M1JETkdnU2djZldaMFFWWFVLNk9PQkFleFhMRkdPc0daV3pMZ1lEWlEw?=
 =?utf-8?B?anFBWlJKZ3pJZ3dEZWRxeG1zeDVhMFcyRzJFaWlHOFZvSlJpL1VRVC80VllN?=
 =?utf-8?Q?H5p954wOJIwUod6ViHJbqcCrK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1324.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbed9863-f824-43a6-a7b8-08dab8ec0cb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2022 13:55:19.1320 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WVWKOCPgwmV7zACUPblIsvExlWX2jEZki32fK4HDd8OeQbbk460ygMSvcxf9v4y440BX8hhZVhsysio9qBvyKfIacdkrrpwYrquEi5Qu/AM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5324
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dmabuf: fix sg_table handling
 in map_dma_buf
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

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPk1hdHRoZXcgQXVs
ZA0KPlNlbnQ6IFRodXJzZGF5LCBPY3RvYmVyIDI3LCAyMDIyIDExOjI3IEFNDQo+VG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj5TdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MS8yXSBkcm0vaTkxNS9kbWFidWY6IGZpeCBzZ190YWJsZSBoYW5kbGluZyBpbg0KPm1hcF9kbWFf
YnVmDQo+DQo+V2UgbmVlZCB0byBpdGVyYXRlIG92ZXIgdGhlIG9yaWdpbmFsIGVudHJpZXMgaGVy
ZSBmb3IgdGhlIHNnX3RhYmxlLA0KPnB1bGxpbmcgb3V0IHRoZSBzdHJ1Y3QgcGFnZSBmb3IgZWFj
aCBvbmUsIHRvIGJlIHJlbWFwcGVkLiBIb3dldmVyDQo+Y3VycmVudGx5IHRoaXMgaW5jb3JyZWN0
bHkgaXRlcmF0ZXMgb3ZlciB0aGUgZmluYWwgZG1hIG1hcHBlZCBlbnRyaWVzLA0KPndoaWNoIGlz
IGxpa2VseSBqdXN0IG9uZSBnaWdhbnRpYyBzZyBlbnRyeSBpZiB0aGUgaW9tbXUgaXMgZW5hYmxl
ZCwNCj5sZWFkaW5nIHRvIHVzIG9ubHkgbWFwcGluZyB0aGUgZmlyc3Qgc3RydWN0IHBhZ2UgKGFu
ZCBhbnkgcGh5c2ljYWxseQ0KPmNvbnRpZ3VvdXMgcGFnZXMgZm9sbG93aW5nIGl0KSwgZXZlbiBp
ZiB0aGVyZSBpcyBwb3RlbnRpYWxseSBsb3RzIG1vcmUNCj5kYXRhIHRvIGZvbGxvdy4NCj4NCj5D
bG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMv
NzMwNg0KPlNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNv
bT4NCj5DYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29t
Pg0KPkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPg0K
PkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPi0t
LQ0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMgfCA0ICsrLS0N
Cj4gMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4NCj5k
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jDQo+
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMNCj5pbmRleCAwN2Vl
ZTFjMDlhYWYuLjA1ZWJiZGZkM2IzYiAxMDA2NDQNCj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMNCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZG1hYnVmLmMNCj5AQCAtNDAsMTMgKzQwLDEzIEBAIHN0YXRpYyBzdHJ1Y3Qgc2df
dGFibGUgKmk5MTVfZ2VtX21hcF9kbWFfYnVmKHN0cnVjdA0KPmRtYV9idWZfYXR0YWNobWVudCAq
YXR0YWNobWUNCj4gCQlnb3RvIGVycjsNCj4gCX0NCj4NCj4tCXJldCA9IHNnX2FsbG9jX3RhYmxl
KHN0LCBvYmotPm1tLnBhZ2VzLT5uZW50cywgR0ZQX0tFUk5FTCk7DQo+KwlyZXQgPSBzZ19hbGxv
Y190YWJsZShzdCwgb2JqLT5tbS5wYWdlcy0+b3JpZ19uZW50cywgR0ZQX0tFUk5FTCk7DQo+IAlp
ZiAocmV0KQ0KPiAJCWdvdG8gZXJyX2ZyZWU7DQo+DQo+IAlzcmMgPSBvYmotPm1tLnBhZ2VzLT5z
Z2w7DQo+IAlkc3QgPSBzdC0+c2dsOw0KPi0JZm9yIChpID0gMDsgaSA8IG9iai0+bW0ucGFnZXMt
Pm5lbnRzOyBpKyspIHsNCj4rCWZvciAoaSA9IDA7IGkgPCBvYmotPm1tLnBhZ2VzLT5vcmlnX25l
bnRzOyBpKyspIHsNCg0KVGhpcyByZWFsbHkgc2hvdWxkIHVzZSB0aGUgZm9yX2VhY2hfc2coKSBt
YWNyby4NCg0KSSBwcm9wb3NlZCBhIGNsZWFuIHVwIHBhdGNoIGEgd2hpbGUgYmFjayB0aGF0IGxv
b2tlZCBsaWtlIHRoaXM6DQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZG1hYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1h
YnVmLmMNCmluZGV4IGUyY2RjMjY0MGMwOC4uY2NjNWQ0NmFhNzQ5IDEwMDY0NA0KLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jDQorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMNCkBAIC03LDYgKzcsNyBAQA0KICNpbmNs
dWRlIDxsaW51eC9kbWEtYnVmLmg+DQogI2luY2x1ZGUgPGxpbnV4L2hpZ2htZW0uaD4NCiAjaW5j
bHVkZSA8bGludXgvZG1hLXJlc3YuaD4NCisjaW5jbHVkZSA8bGludXgvc2NhdHRlcmxpc3QuaD4N
CiANCiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5oIg0KICNpbmNsdWRlICJpOTE1X2Ry
di5oIg0KQEAgLTQxLDEyICs0MiwxMCBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICppOTE1X2dl
bV9tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsDQogICAgICAg
IGlmIChyZXQpDQogICAgICAgICAgICAgICAgZ290byBlcnJfZnJlZTsNCiANCi0gICAgICAgc3Jj
ID0gb2JqLT5tbS5wYWdlcy0+c2dsOw0KICAgICAgICBkc3QgPSBzZ3QtPnNnbDsNCi0gICAgICAg
Zm9yIChpID0gMDsgaSA8IG9iai0+bW0ucGFnZXMtPm5lbnRzOyBpKyspIHsNCisgICAgICAgZm9y
X2VhY2hfc2cob2JqLT5tbS5wYWdlcy0+c2dsLCBzcmMsIG9iai0+bW0ucGFnZXMtPm5lbnRzLCBp
KSB7DQogICAgICAgICAgICAgICAgc2dfc2V0X3BhZ2UoZHN0LCBzZ19wYWdlKHNyYyksIHNyYy0+
bGVuZ3RoLCAwKTsNCiAgICAgICAgICAgICAgICBkc3QgPSBzZ19uZXh0KGRzdCk7DQotICAgICAg
ICAgICAgICAgc3JjID0gc2dfbmV4dChzcmMpOw0KICAgICAgICB9DQoNCklmIHlvdSBhcmUgdXBk
YXRpbmcgdGhlIGZvciBsb29wLCB0aGlzIG1pZ2h0IGJlIGEgcmVhc29uYWJsZSB1cGRhdGUgYXMg
d2VsbC4NCg0KTWlrZQ0KDQo+IAkJc2dfc2V0X3BhZ2UoZHN0LCBzZ19wYWdlKHNyYyksIHNyYy0+
bGVuZ3RoLCAwKTsNCj4gCQlkc3QgPSBzZ19uZXh0KGRzdCk7DQo+IAkJc3JjID0gc2dfbmV4dChz
cmMpOw0KPi0tDQo+Mi4zNy4zDQoNCg==
