Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B73B76CB740
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 08:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEEA710E80E;
	Tue, 28 Mar 2023 06:34:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB61410E80B
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 06:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679985296; x=1711521296;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Dzcyyid/tjZOhSAP26xvrX10Gz3TM23Iu0hQO4JRyQU=;
 b=b1pxhdp/dMd8WAdBXcEI6jJQmwaTp4oiaINyqUg5gfmRqYY2eSeQYjrF
 jN80j/zvK33LMOxWYyWdtJJGIIoN5uWY1V/4onkAFy2HLHZMHO1iglRLF
 3MIsuwG5XLY+oZuht6P6qLufxOPKNZQkKL1T82A0wWR/ca24/q6eQMkVs
 H9X6loZ0jC6QkKWIPfrcaMXOJ8kIz8QsiYLRBf1VpKalz1q9DRuouNINS
 bRxCkRswQbV/+VDVfvBzSCPOdN/YBeGPYkK5GSkPEZdSzHabHek16aSKu
 JgJn7hqbZ9YXxJ7hMCOPwWRpNWRD3Px/1bX49En0WhSBpHEtJZs41auGQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="368242221"
X-IronPort-AV: E=Sophos;i="5.98,296,1673942400"; d="scan'208";a="368242221"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 23:34:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="773024265"
X-IronPort-AV: E=Sophos;i="5.98,296,1673942400"; d="scan'208";a="773024265"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Mar 2023 23:34:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 23:34:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 23:34:56 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 23:34:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iSCDyS8N+U2hSRT89gltb4l/8vRZK1vL2BOnTSDHiBrUWC+VE9vDunyHXZYIjCaBbXKky9hPmJnuWVX88DKdRedunf7zmS1Ph4v6FYf6QAk4S+RC+83dpgzNDlT3wd7kNsdNBUzHhMXXbOwQEnFoIG2mbe76te4z7XrQhgYY2xH5zFOeirrojR+yFlbYt1YV2zh/H8K4ga9yRP8QXxnkEdlFDDyufq5FSzYft6aipR+UMMu8e5rwQACPlSveyDKqN/ux2U+3qVuDAefCLETQFW1rI5BxSblB+UPQrxW8zZB6BtUm0RJdSAs0bdDpuvi/BsVFi/3Xkzx5TBgoqlI72A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dzcyyid/tjZOhSAP26xvrX10Gz3TM23Iu0hQO4JRyQU=;
 b=UWSMqECUvZuNHnhF5FT4/ZeyPvdfDYgjrpL01eWu5KmTSF0i1kC7weTfdNNIx6LJ2JOQR3c0tR4Bbl8bOR9qYL+NXgbYv4dPNIFsYL/CQFqTEiC/w0dKTX5NxIc9aorzx7X7kw5e3hSQ3QyOdgnQScV7BbIBV2iP4SzGMMLtSAmzaApD5ylmA2qiavNUnLq1qHOKzGsm6dJT3uf2/jDnZhVR5bjCAZ5P4nXeJSVYRbjkadXqrVRUWOY1SH2bg1qmIo8RAz5FBLa5uJGXTFMos/T5dZv+y5WpCsToEWoWsECQMGAW/XP1M9tURRAcs3VxKyqk7YQlC8mpawkiuOv/Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Tue, 28 Mar
 2023 06:34:52 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::9b28:6c55:722:9ea0]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::9b28:6c55:722:9ea0%5]) with mapi id 15.20.6222.033; Tue, 28 Mar 2023
 06:34:52 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Zhang, Rui" <rui.zhang@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgeDg2L3RvcG9sb2d5OiBmaXgg?=
 =?utf-8?B?ZXJyb25lb3VzIHNtcF9udW1fc2libGluZ3Mgb24gSW50ZWwgSHlicmlkIHBs?=
 =?utf-8?Q?atform?=
Thread-Index: AQHZYRK9IBb3xAEYpUmJnyTROE5riK8PbxYAgABNAWA=
Date: Tue, 28 Mar 2023 06:34:52 +0000
Message-ID: <DM8PR11MB56558D28FEB89B99959505C6E0889@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20230327121116.1785979-1-imre.deak@intel.com>
 <167994374538.32630.158002195269097607@emeril.freedesktop.org>
 <ZCIKCkGXLxlNXvVT@ideak-desk.fi.intel.com>
 <9f995e8adb40255e5c9668d48cf04be180871092.camel@intel.com>
 <eea61093bde251a34038fad4ffcf91f616ff9976.camel@intel.com>
In-Reply-To: <eea61093bde251a34038fad4ffcf91f616ff9976.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|SJ1PR11MB6129:EE_
x-ms-office365-filtering-correlation-id: 4e51923a-c59a-4f9d-d674-08db2f5689c3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: niXBCUHb11swZ1ZZalkxMF1r6ewPB1mcuObgGEBTo+3BZgIDeAfV9fUc7Q49AAp878SJHewszPM698XSDGKqUyJAC5WGWUFxpmnNa7IDTVoExfjUfgRI8kqI9ak18U06sya3Moq0YJGo5DNviW0ZzzQZRQWnyiK7xyvGKxwRDjvr9HjTxPIEglvZoYc5z/u6rXUHaBNQFN97mEtIzM1bqCKFd4srGERLdH8Y5rTq7u2XGxC4mlIHuteqMJeHopyDdOywZWLo2wOWgRe/+GMwlFULxP4FDJEihaAq42n9qVvo2dxkCR+XNCpOdlKPkh4rlAS/nudGgFbj1AtByw5BVvG9dwNw2/46UnzjOnjrjQpq/349dw/ALoZK8hs/OYoqeAHhpPajvHDtIj/Pn42DcIrzBtefVx2oJQI4Upt59utkH1GnLYXLbR3MeMCCybtql6DYWEiCJG8sD8A3oqgulfAvlmPXjQtiyMxXBLO9RszrovTEfqVBOPwa1kEKApXyep03sVl7GJiOUj8qQtKimMgHKVi8Mrvd2V4jq/CPWgSq3dinmYO+dLNajJ5oZbG1uaaJXasYUB2iOGbw0TNBVOyb4QcQg89Y1HjJFpYGnQX5hmte9dHnVpztQu/BmSk9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(346002)(366004)(39860400002)(396003)(451199021)(7696005)(41300700001)(966005)(6506007)(45080400002)(52536014)(4326008)(71200400001)(186003)(5660300002)(8936002)(478600001)(9686003)(26005)(66476007)(66946007)(66556008)(66446008)(76116006)(83380400001)(6636002)(110136005)(316002)(64756008)(82960400001)(38100700002)(122000001)(2906002)(38070700005)(55016003)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c0k4Sms3RzdIZ2JWaTYwNlRTdGhkVDRpNlBDSUNxU2lqdVF1dXJHY1EwcmR1?=
 =?utf-8?B?UG5BZ0NMRVRWUlh5WmV1cFFPZ0ZONEFkckRmYmVpVnd1M1BWMGVaQXMzc3B3?=
 =?utf-8?B?VjRzZ2FIU3lmM2RMYldxV3BpOElDVU1mYUd1YXBmamR1Uklxc3FFY3FqY015?=
 =?utf-8?B?QjBMVDh6Q0MxTlFXSVg5SDJIWXNxeVFzZ0UxZzZidGI4N3BUVzlyTTZ2Zmox?=
 =?utf-8?B?ZktTUnl2R1RnVjVIM3lLREZrWno0YjBsWW9hUnZKK2lBZDFGQSs3TzBPa0cz?=
 =?utf-8?B?SkxRSndsZDVodHZvdlBVUGtKd0Z3RnlrRVV0Ti81eXRjcGNacXoyNVFTaU9i?=
 =?utf-8?B?Sk5aRkJFbVpOSlk4NmxvZlNDQ01DZkc0QkQwZys4QVMrTnhiUlhQQ25BbHJN?=
 =?utf-8?B?MjVsQ0FRbHZoZzFwUjBFa3FyZHBRaGpLbE13OENSUEhRTXdvUTdFUkxmaitF?=
 =?utf-8?B?TlNIOUxDSEc4dXZTc1BWQnZFSHRianh6dGNoZ2ZLNWhybmNGeUpBVjBsRTEw?=
 =?utf-8?B?UUxLSmd5cHowa2JVNjJXa1ovdVZWVWxoL1hkd1VDQWhhbGJRVHVjb2lIeUlp?=
 =?utf-8?B?NUVZRWZyeHNvc3Y3YXI4ekZiZTgySWt5RWtmYW9mRUFHdURFak1VNzhhRHVV?=
 =?utf-8?B?QnJwcEZETURMdHhpZmJOY2tyeEVBVWM5S0xhMkpjOFFyRXRBbG9hMnpFTDhp?=
 =?utf-8?B?bDlSK3l1clcwZmoxb3VNRDdwOHpFRm5IN3MyYlZvQkZrUUlrVEtUeTNIYlBJ?=
 =?utf-8?B?N0drZXlTU25YZ3VYRlRqZXlmMlNiVmt0TUwyb2V6M3RkT1EwbVRmdHFnYTl2?=
 =?utf-8?B?Nm42dG1yVU9jQUZUMGE3c0U2MzdjdkVvd0FldUJ2MHljN3Y4WnhGbEZzUjhR?=
 =?utf-8?B?QnUwMXNCWUxoTmlZdmpUR3QxSHluL05QMnhYL0pDVEtUMmNSb3UvU2pPdzFD?=
 =?utf-8?B?VGovTGFXQzFMcllGWHdsNTdsYlMzWWRXS2tFdktwYlF6UnZiYXR6dzNqc3Fh?=
 =?utf-8?B?THlVZE9FajU5TzR5VWN6VTBFYVZNYWZTMjBOcldTM1Nmd1c0dHhENUJGVU5n?=
 =?utf-8?B?ZGQrQWVUQXNYZmdzNGxsNVRqcUQ5dTdZMDNGeFFhVHBhOGFtclpLZVlEb3Yr?=
 =?utf-8?B?VWFpQUZxYTIwdXB2QW5GaGRhRk9rL2lFQzdHLzhGVzZ2NU13SjJvQVdIU25V?=
 =?utf-8?B?WTcxeEplYmlySmRxVWNESVhRWk9UaHVPaVRsVjZNT3JyNVJacUZxS2FhMTVE?=
 =?utf-8?B?NVdMKy84VUlIODhuT1pabHRrOTN1SWoreWpsTDM2WkRMT3FYT0o1Rk9Tc3F6?=
 =?utf-8?B?M0ZPNG5OT3lLVGZKYWVMdHhkN2VnTkFxSUtLc1J4ZjN3L2tUeURKSkhOMHIx?=
 =?utf-8?B?S3Y2clA3TStEMEF0aUlSK1V1ajdOa1JaNDdqQy9ucFZiMTBTaXlya1F6cXZo?=
 =?utf-8?B?YWFQRGpTRTl4eHJQZUl2eVNTQkIvNFZob3dDaDNDcXhFYUlXalk2SjErZFhH?=
 =?utf-8?B?YXMvb0xleml1Ri9XbFRya0hZc1RYb25rVnlPNU1UMUVmSkh6ZGRHTUtlbmN4?=
 =?utf-8?B?ckJUVmpZTFR0QzBnSzV1WFQ1bDVTSFdYUzU5cmxDdFI1bUxlKzB2UlI2Vy9v?=
 =?utf-8?B?SlRrSllIdmJFVlJsSGxzZUpoWVhyRGdHcU9lZzlYUkFkeUZmUFBheGExcnFX?=
 =?utf-8?B?V0QzaHlRNmRyY2pBWGluTTlHT3pFQ3lQcWVaVXhDRHp2RThvSkMxSnFqWXVC?=
 =?utf-8?B?TFpORStobi90U082aHIvNFhsTVhZRkpMbEhRZFNaOXJSSzRzSmxKSEpFVlVK?=
 =?utf-8?B?bHFFNUhRcFdZanZHMXB5Rm1uY1lsTUU0V3Uwa0YwbUZ0QkRUSGpBRGNSeUc1?=
 =?utf-8?B?eDBydFVQZUpTdk9aZlVTTktCVi9CQWp5bFVDbjV3NTlVenFETHhTay9rYnFJ?=
 =?utf-8?B?bmNnTEg0aS9JL2NxUW10RDZtd3J4K0pLWTVYaWlCaFYwd2lBUTR1dlY2UEZx?=
 =?utf-8?B?eGlBOUQ1cGVuVE8vN2ViRUJYY3VxZkwzUGZ5Sm85cFpQK1IvZm5mRGJjVWdO?=
 =?utf-8?B?Smh2NDVxblcxcEF3VDI4SE9XZFRoaE1TTkZmeE9iNnlmdHM5dS8wTy9zczA0?=
 =?utf-8?Q?SEx+gdOgl7rIBVQ7EvrRkrHoW?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e51923a-c59a-4f9d-d674-08db2f5689c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2023 06:34:52.7486 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zvLDwpJ6swojmQN4cNesQxBItCxS2t11U17yUCWxy1USaQ9usel7ymLj2MFUBSUNBwlK75dx8SWFHnHuzTqd5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6129
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgeDg2?=
 =?utf-8?q?/topology=3A_fix_erroneous_smp=5Fnum=5Fsiblings_on_Intel_Hybrid?=
 =?utf-8?q?_platform?=
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

SGkuIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBaaGFuZywgUnVpIDxy
dWkuemhhbmdAaW50ZWwuY29tPg0KPiBTZW50OiB0aWlzdGFpIDI4LiBtYWFsaXNrdXV0YSAyMDIz
IDQuNTcNCj4gVG86IERlYWssIEltcmUgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IENjOiBTYWFy
aW5lbiwgSmFuaSA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiDinJcgRmkuQ0kuQkFUOiBmYWlsdXJlIGZvciB4
ODYvdG9wb2xvZ3k6IGZpeCBlcnJvbmVvdXMgc21wX251bV9zaWJsaW5ncw0KPiBvbiBJbnRlbCBI
eWJyaWQgcGxhdGZvcm0NCj4gDQo+IE9uIFR1ZSwgMjAyMy0wMy0yOCBhdCAwOToxNCArMDgwMCwg
WmhhbmcgUnVpIHdyb3RlOg0KPiA+IEhpLCBJbXJlLA0KPiA+DQo+ID4gVGhhbmtzIGZvciByYWlz
aW5nIHRoaXMuDQo+ID4NCj4gPiBPbiBUdWUsIDIwMjMtMDMtMjggYXQgMDA6MjYgKzAzMDAsIElt
cmUgRGVhayB3cm90ZToNCj4gPiA+IEhpIFJ1aSwNCj4gPiA+DQo+ID4gPiBhZnRlciBhcHBseWlu
ZyB5b3VyDQo+ID4gPiAieDg2L3RvcG9sb2d5OiBmaXggZXJyb25lb3VzIHNtcF9udW1fc2libGlu
Z3Mgb24gSW50ZWwgSHlicmlkDQo+ID4gPiBwbGF0Zm9ybSINCj4gPiA+DQo+ID4gPiBmaXggb24g
dGhlIGRybS10aXAgdHJlZSAoc2VlIHRoZSBwYXRjaHdvcmsgVVJMIGJlbG93KSB0aGUgQ0kgdGVz
dHMNCj4gPiA+IHNob3cgc29tZSByZWdyZXNzaW9uIG9uIGEgSFNXIGFuZCBhIEtCTCBtYWNoaW5l
IChzZWUgWzJdIGFuZCBbNF0NCj4gPiA+IGJlbG93KSBpbiB0aGUgaTkxNSBkcml2ZXIuIEhvd2V2
ZXIgSSB0aGluayB0aGV5IGNhbid0IGJlIHJlbGF0ZWQgdG8NCj4gPiA+IHlvdXIgY2hhbmdlcywg
c2luY2Ugb24gdGhlc2UgbWFjaGluZXMgYWxsIGNvcmVzIHdpbGwgcmVwb3J0IHRoZSBzYW1lDQo+
ID4gPiBudW1iZXIgb2YgQ1BVIHNpYmxpbmdzLg0KPiA+DQo+ID4gUmlnaHQuDQo+ID4NCj4gPiA+
ICBDb3VsZCB5b3UgY29uZmlybSB0aGlzIGFuZCB0aGF0IGluIGdlbmVyYWwgdGhlIHJlcG9ydGVk
IHNpYmxpbmdzDQo+ID4gPiBjYW4gb25seSB2YXJ5IG9uIHBsYXRmb3JtcyB3aXRoIGJvdGggRSBh
bmQgUCBjb3JlcyAoQURMLVAgYmVpbmcgdGhlDQo+ID4gPiBmaXJzdCBzdWNoIHBsYXRmb3JtKT8N
Cj4gPg0KPiA+IFJpZ2h0Lg0KPiA+DQo+ID4gSSBkb24ndCB0aGluayB0aGUgcGF0Y2ggY291bGQg
YnJpbmcgYW55IGNoYW5nZSByZWxhdGVkLg0KPiA+IEl0IG9ubHkgYWZmZWN0cyBoeWJyaWQgcGxh
dGZvcm1zLg0KPiANCj4gSXMgdGhpcyB0b3BvbG9neSBmaXggcGF0Y2ggdGhlIG9ubHkgcGF0Y2gg
YXBwbGllZD8gb3IgdG9nZXRoZXIgd2l0aCBzb21lIG90aGVyIHBhdGNoZXM/DQpUaGlzIG9ubHku
IA0KPiANCj4gSSBjYW4gaGFyZGx5IGltYWdpbmUgdGhhdCB0aGUgZml4IHBhdGNoIGNhbiB0cmln
Z2VyIHN1Y2ggaXNzdWVzLCBzbyBJIHN1c3BlY3QgdGhleSBhcmUNCj4gaW50ZXJtaXR0ZW50IGlz
c3Vlcy4gc2F5IGlzIHRoZSByZWdyZXNzaW9uIDEwMCUgcmVwcm9kdWNpYmxlPw0KVGhpcyBpcyBu
b3QgcmVncmVzc2lvbi4gSSBhc3N1bWUgZHJtLXRpcCBtaXNzZXMgdGhpcyBwYXRjaCAoYXMgd2Fz
IG5vdCBwYXJ0IG9mIDYuM3JjIHlldC4pDQoNCj4gZG9lcyB0aGUgd2FybmluZy9mYWlsdXJlIGV2
ZXIgc2hvdyB3aXRob3V0IHRoZSBwYXRjaD8NClllcywgT24gb3VyIGxvY2FsICgzKSBzeXN0ZW0n
cyBzZWVuIG9uIGFsbC4gDQo+IA0KPiBCVFcsIEkganVzdCBoYXBwZW5lZCB0byBzZWUgdGhpcyB0
aHJlYWQNCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL0RNOFBSMTFNQjU2NTU4MEJDRjQ0
NjYxQjZBMzkyRjBDRUUwOEI5QERNOFAgDQo+IFIxMU1CNTY1NS5uYW1wcmQxMS5wcm9kLm91dGxv
b2suY29tLw0KPiBJZiB0aGUgcHJvYmxlbSBvbiBoYW5kIGhhcyBiZWVuIHZlcmlmaWVkIHRvIGJl
IG5vdCByZWxhdGVkIHdpdGggdGhlIHRvcG9sb2d5IGZpeCwgY2FuDQo+IHdlIHVwZGF0ZSBpbiB0
aGlzIHRocmVhZCBhcyB3ZWxsPw0KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzAz
MjMwMTU2NDAuMjc5MDYtMS1ydWkuemhhbmdAaW50ZWwuY29tLw0KPiBUaGlzIGlzIGFub3RoZXIg
aXNzdWUgdGhhdCB0aGUgcGF0Y2ggZml4ZXMuIEFuZCBpdCdzIGJldHRlciB0byBoYXZlIGEgQnVn
bGluay9UZXN0ZWQtYnkNCj4gdGFnIGluIHRoZSBjb21taXQuDQo+IA0KPiB0aGFua3MsDQo+IHJ1
aQ0KPiANCj4gPg0KPiA+IFRoYW5rcywNCj4gPiBydWkNCj4gPiA+IFRoYW5rcywNCj4gPiA+IElt
cmUNCj4gPiA+DQo+ID4gPiBPbiBNb24sIE1hciAyNywgMjAyMyBhdCAwNzowMjoyNVBNICswMDAw
LCBQYXRjaHdvcmsgd3JvdGU6DQo+ID4gPiA+ID09IFNlcmllcyBEZXRhaWxzID09DQo+ID4gPiA+
DQo+ID4gPiA+IFNlcmllczogeDg2L3RvcG9sb2d5OiBmaXggZXJyb25lb3VzIHNtcF9udW1fc2li
bGluZ3Mgb24gSW50ZWwNCj4gPiA+ID4gSHlicmlkIHBsYXRmb3JtDQo+ID4gPiA+IFVSTCAgIDog
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMTU2NjEvDQo+ID4gPiA+
IFN0YXRlIDogZmFpbHVyZQ0KPiA+ID4gPg0KPiA+ID4gPiA9PSBTdW1tYXJ5ID09DQo+ID4gPiA+
DQo+ID4gPiA+IENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzEyOTIxIC0+IFBhdGNo
d29ya18xMTU2NjF2MQ0KPiA+ID4gPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09DQo+ID4gPiA+DQo+ID4gPiA+IFN1bW1hcnkNCj4gPiA+ID4gLS0t
LS0tLQ0KPiA+ID4gPg0KPiA+ID4gPiAgICoqRkFJTFVSRSoqDQo+ID4gPiA+DQo+ID4gPiA+ICAg
U2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzExNTY2MXYxDQo+
ID4gPiA+IGFic29sdXRlbHkgbmVlZCB0byBiZQ0KPiA+ID4gPiAgIHZlcmlmaWVkIG1hbnVhbGx5
Lg0KPiA+ID4gPg0KPiA+ID4gPiAgIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBo
YXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUNCj4gPiA+ID4gY2hhbmdlcw0KPiA+ID4gPiAgIGlu
dHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzExNTY2MXYxLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRl
YW0gdG8NCj4gPiA+ID4gYWxsb3cgdGhlbQ0KPiA+ID4gPiAgIHRvIGRvY3VtZW50IHRoaXMgbmV3
IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UNCj4gPiA+ID4gcG9zaXRpdmVz
IGluIENJLg0KPiA+ID4gPg0KPiA+ID4gPiAgIEV4dGVybmFsIFVSTDoNCj4gPiA+ID4gaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTE1NjYxdjEvaW5k
ZXguDQo+ID4gPiA+IGh0bWwNCj4gPiA+ID4NCj4gPiA+ID4gUGFydGljaXBhdGluZyBob3N0cyAo
MzcgLT4gMzcpDQo+ID4gPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiA+ID4g
Pg0KPiA+ID4gPiAgIE5vIGNoYW5nZXMgaW4gcGFydGljaXBhdGluZyBob3N0cw0KPiA+ID4gPg0K
PiA+ID4gPiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+ID4gPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0N
Cj4gPiA+ID4NCj4gPiA+ID4gICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5
IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluDQo+ID4gPiA+IFBhdGNod29ya18xMTU2NjF2MToNCj4g
PiA+ID4NCj4gPiA+ID4gIyMjIElHVCBjaGFuZ2VzICMjIw0KPiA+ID4gPg0KPiA+ID4gPiAjIyMj
IFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMNCj4gPiA+ID4NCj4gPiA+ID4gICAqIGlndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVAaGFuZ2NoZWNrOg0KPiA+ID4gPiAgICAgLSBmaS1oc3ctNDc3MDogICAg
ICAgIFtQQVNTXVsxXSAtPiBbRE1FU0ctV0FSTl1bMl0NCj4gPiA+ID4gICAgWzFdOg0KPiA+ID4g
PiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMjkyMS9m
aS1oc3ctDQo+IDQ3NzAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBoYW5nY2hlY2suaHRtbA0KPiA+
ID4gPiAgICBbMl06DQo+ID4gPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzExNTY2MXYxL2ZpLWhzdw0KPiA+ID4gPiAtNDc3MC9pZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlQGhhbmdjaGVjay5odG1sDQo+ID4gPiA+DQo+ID4gPiA+DQo+ID4gPiA+ICMj
IyMgU3VwcHJlc3NlZCAjIyMjDQo+ID4gPiA+DQo+ID4gPiA+ICAgVGhlIGZvbGxvd2luZyByZXN1
bHRzIGNvbWUgZnJvbSB1bnRydXN0ZWQgbWFjaGluZXMsIHRlc3RzLCBvcg0KPiA+ID4gPiBzdGF0
dXNlcy4NCj4gPiA+ID4gICBUaGV5IGRvIG5vdCBhZmZlY3QgdGhlIG92ZXJhbGwgcmVzdWx0Lg0K
PiA+ID4gPg0KPiA+ID4gPiAgICogaWd0QGZiZGV2QGluZm86DQo+ID4gPiA+ICAgICAtIHtiYXQt
a2JsLTJ9OiAgICAgICAgW1NLSVBdWzNdIChbZmRvIzEwOTI3MV0pIC0+IFtBQk9SVF1bNF0NCj4g
PiA+ID4gICAgWzNdOg0KPiA+ID4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV8xMjkyMS9iYXQta2JsLQ0KPiAyL2lndEBmYmRldkBpbmZvLmh0bWwNCj4g
PiA+ID4gICAgWzRdOg0KPiA+ID4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMTU2NjF2MS9iYXQta2INCj4gPiA+ID4gbC0yL2lndEBmYmRldkBp
bmZvLmh0bWwNCj4gPiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4gS25vd24gaXNzdWVzDQo+ID4gPiA+
IC0tLS0tLS0tLS0tLQ0KPiA+ID4gPg0KPiA+ID4gPiAgIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZv
dW5kIGluIFBhdGNod29ya18xMTU2NjF2MSB0aGF0IGNvbWUgZnJvbQ0KPiA+ID4gPiBrbm93biBp
c3N1ZXM6DQo+ID4gPiA+DQo+ID4gPiA+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4gPiA+ID4NCj4g
PiA+ID4gIyMjIyBJc3N1ZXMgaGl0ICMjIyMNCj4gPiA+ID4NCj4gPiA+ID4gICAqIGlndEBnZW1f
ZXhlY19zdXNwZW5kQGJhc2ljLXMzQGxtZW0wOg0KPiA+ID4gPiAgICAgLSBiYXQtZGcyLTExOiAg
ICAgICAgIFtQQVNTXVs1XSAtPiBbSU5DT01QTEVURV1bNl0NCj4gPiA+ID4gKFtpOTE1IzYzMTFd
KQ0KPiA+ID4gPiAgICBbNV06DQo+ID4gPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzEyOTIxL2JhdC1kZzItDQo+IDExL2lndEBnZW1fZXhlY19zdXNw
ZW5kQGJhc2ljLXMzQGxtZW0wLmh0bWwNCj4gPiA+ID4gICAgWzZdOg0KPiA+ID4gPiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTU2NjF2MS9iYXQt
ZGcNCj4gPiA+ID4gMi0xMS9pZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zM0BsbWVtMC5odG1s
DQo+ID4gPiA+DQo+ID4gPiA+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHJlc2V0Og0KPiA+
ID4gPiAgICAgLSBiYXQtcnBscy0xOiAgICAgICAgIFtQQVNTXVs3XSAtPiBbQUJPUlRdWzhdIChb
aTkxNSM0OTgzXSkNCj4gPiA+ID4gICAgWzddOg0KPiA+ID4gPiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMjkyMS9iYXQtcnBscy0NCj4gMS9pZ3RAaTkx
NV9zZWxmdGVzdEBsaXZlQHJlc2V0Lmh0bWwNCj4gPiA+ID4gICAgWzhdOg0KPiA+ID4gPiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTU2NjF2MS9i
YXQtcnANCj4gPiA+ID4gbHMtMS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHJlc2V0Lmh0bWwNCj4g
PiA+ID4NCj4gPiA+ID4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAc2xwYzoNCj4gPiA+ID4g
ICAgIC0gYmF0LXJwbHMtMjogICAgICAgICBOT1RSVU4gLT4gW0RNRVNHLUZBSUxdWzldIChbaTkx
NSM2MzY3XQ0KPiA+ID4gPiAvDQo+ID4gPiA+IFtpOTE1Izc5MTNdIC8gW2k5MTUjNzk5Nl0pDQo+
ID4gPiA+ICAgIFs5XToNCj4gPiA+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTE1NjYxdjEvYmF0LXJwDQo+ID4gPiA+IGxzLTIvaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZUBzbHBjLmh0bWwNCj4gPiA+ID4NCj4gPiA+ID4gICAqIGlndEBpOTE1X3N1
c3BlbmRAYmFzaWMtczMtd2l0aG91dC1pOTE1Og0KPiA+ID4gPiAgICAgLSBiYXQtcnBscy0yOiAg
ICAgICAgIE5PVFJVTiAtPiBbQUJPUlRdWzEwXSAoW2k5MTUjNjY4N10gLw0KPiA+ID4gPiBbaTkx
NSM3OTc4XSkNCj4gPiA+ID4gICAgWzEwXToNCj4gPiA+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTE1NjYxdjEvYmF0LXJwDQo+ID4gPiA+IGxz
LTIvaWd0QGk5MTVfc3VzcGVuZEBiYXNpYy1zMy13aXRob3V0LWk5MTUuaHRtbA0KPiA+ID4gPg0K
PiA+ID4gPiAgICogaWd0QGttc19waXBlX2NyY19iYXNpY0Bub25ibG9ja2luZy1jcmMtZnJhbWUt
c2VxdWVuY2VAcGlwZS1kLQ0KPiA+ID4gPiBkcC0xOg0KPiA+ID4gPiAgICAgLSBiYXQtZGcyLTg6
ICAgICAgICAgIFtQQVNTXVsxMV0gLT4gW0ZBSUxdWzEyXSAoW2k5MTUjNzkzMl0pDQo+ID4gPiA+
ICAgIFsxMV06DQo+ID4gPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzEyOTIxL2JhdC1kZzItDQo+IDgvaWd0QGttc19waXBlX2NyY19iYXNpY0Bub25i
bG9ja2luZy1jcmMtZnJhbWUtc2VxdWVuY2VAcGlwZS1kLWRwLTEuaHRtbA0KPiA+ID4gPiAgICBb
MTJdOg0KPiA+ID4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMTU2NjF2MS9iYXQtZGcNCj4gPiA+ID4gMi04L2lndEBrbXNfcGlwZV9jcmNfYmFz
aWNAbm9uYmxvY2tpbmctY3JjLWZyYW1lLXNlcXVlbmNlQHBpcGUtZC1kDQo+ID4gPiA+IHAtMS5o
dG1sDQo+ID4gPiA+DQo+ID4gPiA+DQo+ID4gPiA+ICMjIyMgUG9zc2libGUgZml4ZXMgIyMjIw0K
PiA+ID4gPg0KPiA+ID4gPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBndF9oZWFydGJlYXQ6
DQo+ID4gPiA+ICAgICAtIGZpLWtibC1zb3Jha2E6ICAgICAgW0RNRVNHLUZBSUxdWzEzXSAoW2k5
MTUjNTMzNF0gLw0KPiA+ID4gPiBbaTkxNSM3ODcyXSkgLT4gW1BBU1NdWzE0XQ0KPiA+ID4gPiAg
ICBbMTNdOg0KPiA+ID4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L0NJX0RSTV8xMjkyMS9maS1rYmwtDQo+IHNvcmFrYS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGd0
X2hlYXJ0YmVhdC5odG1sDQo+ID4gPiA+ICAgIFsxNF06DQo+ID4gPiA+IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzExNTY2MXYxL2ZpLWtibA0KPiA+
ID4gPiAtc29yYWthL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3RfaGVhcnRiZWF0Lmh0bWwNCj4g
PiA+ID4NCj4gPiA+ID4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAcmVzZXQ6DQo+ID4gPiA+
ICAgICAtIGJhdC1ycGxzLTI6ICAgICAgICAgW0FCT1JUXVsxNV0gKFtpOTE1IzQ5ODNdIC8gW2k5
MTUjNzkxM10pDQo+ID4gPiA+IC0+IFtQQVNTXVsxNl0NCj4gPiA+ID4gICAgWzE1XToNCj4gPiA+
ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTI5MjEv
YmF0LXJwbHMtDQo+IDIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUByZXNldC5odG1sDQo+ID4gPiA+
ICAgIFsxNl06DQo+ID4gPiA+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzExNTY2MXYxL2JhdC1ycA0KPiA+ID4gPiBscy0yL2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVAcmVzZXQuaHRtbA0KPiA+ID4gPg0KPiA+ID4gPg0KPiA+ID4gPiAgIHtuYW1lfTog
VGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZA0KPiA+
ID4gPiB3aGVuIGNvbXB1dGluZw0KPiA+ID4gPiAgICAgICAgICAgdGhlIHN0YXR1cyBvZiB0aGUg
ZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3INCj4gPiA+ID4gRkFJTFVSRSkuDQo+ID4g
PiA+DQo+ID4gPiA+ICAgW2ZkbyMxMDkyNzFdOg0KPiA+ID4gPiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzENCj4gPiA+ID4gICBbaTkxNSM0OTgzXToN
Cj4gPiA+ID4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMv
NDk4Mw0KPiA+ID4gPiAgIFtpOTE1IzUzMzRdOg0KPiA+ID4gPiBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy81MzM0DQo+ID4gPiA+ICAgW2k5MTUjNjMxMV06
DQo+ID4gPiA+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVz
LzYzMTENCj4gPiA+ID4gICBbaTkxNSM2MzY3XToNCj4gPiA+ID4gaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNjM2Nw0KPiA+ID4gPiAgIFtpOTE1IzY2ODdd
Og0KPiA+ID4gPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vl
cy82Njg3DQo+ID4gPiA+ICAgW2k5MTUjNzg3Ml06DQo+ID4gPiA+IGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzc4NzINCj4gPiA+ID4gICBbaTkxNSM3OTEz
XToNCj4gPiA+ID4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1
ZXMvNzkxMw0KPiA+ID4gPiAgIFtpOTE1Izc5MzJdOg0KPiA+ID4gPiBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy83OTMyDQo+ID4gPiA+ICAgW2k5MTUjNzk3
OF06DQo+ID4gPiA+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNz
dWVzLzc5NzgNCj4gPiA+ID4gICBbaTkxNSM3OTk2XToNCj4gPiA+ID4gaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNzk5Ng0KPiA+ID4gPg0KPiA+ID4gPg0K
PiA+ID4gPiBCdWlsZCBjaGFuZ2VzDQo+ID4gPiA+IC0tLS0tLS0tLS0tLS0NCj4gPiA+ID4NCj4g
PiA+ID4gICAqIExpbnV4OiBDSV9EUk1fMTI5MjEgLT4gUGF0Y2h3b3JrXzExNTY2MXYxDQo+ID4g
PiA+DQo+ID4gPiA+ICAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5DQo+ID4gPiA+ICAgQ0lfRFJNXzEy
OTIxOiAzZGU2MDQwY2U5OTAwYTk0ZWM2MjY2NjJkNWM2YTIyN2IzN2VlYjFjIEANCj4gPiA+ID4g
Z2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+ID4gPiA+ICAgSUdU
XzcyMjE6IDRiNzdjNmQ4NTAyNGQyMmNhNTIxZDUxMGY4ZWVlNTc0MTI4ZmUwNGYgQA0KPiA+ID4g
PiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2lndC1ncHUtdG9vbHMuZ2l0DQo+
ID4gPiA+ICAgUGF0Y2h3b3JrXzExNTY2MXYxOiAzZGU2MDQwY2U5OTAwYTk0ZWM2MjY2NjJkNWM2
YTIyN2IzN2VlYjFjIEANCj4gPiA+ID4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4
LWNpL2xpbnV4DQo+ID4gPiA+DQo+ID4gPiA+DQo+ID4gPiA+ICMjIyBMaW51eCBjb21taXRzDQo+
ID4gPiA+DQo+ID4gPiA+IDgzZDllNzY2MTBkNSB4ODYvdG9wb2xvZ3k6IGZpeCBlcnJvbmVvdXMg
c21wX251bV9zaWJsaW5ncyBvbiBJbnRlbA0KPiA+ID4gPiBIeWJyaWQgcGxhdGZvcm0NCj4gPiA+
ID4NCj4gPiA+ID4gPT0gTG9ncyA9PQ0KPiA+ID4gPg0KPiA+ID4gPiBGb3IgbW9yZSBkZXRhaWxz
IHNlZToNCj4gPiA+ID4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTE1NjYxdjEvaW5kZXguDQo+ID4gPiA+IGh0bWwNCg==
