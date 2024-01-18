Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 932788313F8
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 09:05:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D893810E6B0;
	Thu, 18 Jan 2024 08:05:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89DEB10E6B0;
 Thu, 18 Jan 2024 08:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705565109; x=1737101109;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uSZYGI/fK17lV4SiUr21R7u1yNZoKVsyBuyxTHDCFBo=;
 b=K0j8OHCXi1Up4cprry5jy4t1m+9P0oYBL4zNAvLCVdrCB3XlDtJpUwZN
 z++3bSYr21L50plHEvvUxAKNgs2VFsZSU1Q/nPcAMQAEgr2KXTR02AzBS
 dDIp5oNi/uiFj8uqx8/YAnvBtzWQ8XWmEX6gOX9/+1sBvOPnkQDYy6nHw
 GtIpEumBN3ltBR67xq5jwYdgFuSQ4+ih277Ej3nu2pKfqqzSd7EMu7ROm
 yxp1WIeajiXvrWi8L2iZYojkEMc6XYQxuTYCfPNSrdSFirqRpYBmE00A2
 kc1p+DOkB1ludaXUbmLjWtm19ZoILUSdcK6wXIKW3zZ7qDc9z5aUyMjGK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="431530072"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; d="scan'208";a="431530072"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 00:05:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="784736868"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; d="scan'208";a="784736868"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jan 2024 00:04:38 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Jan 2024 00:04:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Jan 2024 00:04:36 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Jan 2024 00:04:36 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Jan 2024 00:04:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Iut+GWBrJXCWnWqAqdt9yPUCeWKbw6MuV/oCYPloTLI4Q+dmHx949EKpmUD4TSkdqgTamY/q5JZz6gdnbvavHNFNoNimwp9GNtBfGiiOXg0lTCw1wnDLIOq/1dFiSRXhSa8TZ6JMfGuY5hi/Q4BO5VsyXBz8s7TCJZ+p3qN1EnHLn/+q3o9zvdmoPwqWiiK0bBPM0dMbQUh2aHkMFQoF1TqhMaG/R+VNNEBs4k0Bm8Oq22oSUgE5NUU/T5Kyt/MAqRo9kLFHgzACbM8fVE9BAlWMXS9viuTC1Y8QDaodJkoEugbvOUt/TWKV+/WtteNxpXgZqYAbYERutjToEkikRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uSZYGI/fK17lV4SiUr21R7u1yNZoKVsyBuyxTHDCFBo=;
 b=ibKiSwVVDYw2Zd+GATjyTGySAPSHW8nzA1Z6eo5bO2Zw+lKSxKwHKJUdPizg4xtZI9SHOz8KsyXlgqf8tx2K2Dh13lKDYiafIDKLvxnfual1etRP0DQrCnDP8xTcoq4U0LjVJj+rvOhrHL+Wo3m9n93MIYwu2bzgYttfzFOHvfhcviHoT0M959th2qdzIgqKrL2oZXcyL/KUdSXsC7AG1o5etvNZPskayhLteQojH4ugPOXkLPaAW0/leHblY2ETS2qxZk267ObGcp7wtPnu7r3qjL8SVi8z06+7GWm2fdyoNA92oC0hyQm8hVpT6cSp6SFOjJ39KToezfWWE2QqJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22)
 by DS7PR11MB7951.namprd11.prod.outlook.com (2603:10b6:8:eb::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.24; Thu, 18 Jan
 2024 08:04:33 +0000
Received: from PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::4b4:61d6:9dff:eca]) by PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::4b4:61d6:9dff:eca%7]) with mapi id 15.20.7181.029; Thu, 18 Jan 2024
 08:04:32 +0000
From: "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "I915-ci-infra@lists.freedesktop.org" <I915-ci-infra@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBDdXJz?=
 =?utf-8?Q?or_vblank_evasion?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IEN1cnNvciB2?=
 =?utf-8?Q?blank_evasion?=
Thread-Index: AQHaLgiUcF0qZuE83kONMusJrDloKbCu378AgDCNyPA=
Date: Thu, 18 Jan 2024 08:04:32 +0000
Message-ID: <PH8PR11MB6753D296B6F71ED45CA53198F2712@PH8PR11MB6753.namprd11.prod.outlook.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
 <170250169138.10264.10617046881352336732@emeril.freedesktop.org>
 <DM8PR11MB565510ABB7B4F9C3ED54A053E090A@DM8PR11MB5655.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB565510ABB7B4F9C3ED54A053E090A@DM8PR11MB5655.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6753:EE_|DS7PR11MB7951:EE_
x-ms-office365-filtering-correlation-id: 6b7b1793-1347-4544-1ef7-08dc17fc1a98
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Yf666KG3DPUZsnCTG78/meFvqHa0XDViMCkNZQzs+mFXknhNH986yvdlz6NGTCwqp2Wjf0lijlz++dcGQtqxKE7aXKltuIekP280u54RKmis/6SUX8dSED4G1XDH9ox8G6ykxh7z1Yjcceh+9pDozSRcT+0Ae/0SLsloxDNO/TV0MrLvvtdvYzBKlaKihKmiq9QRskxk5ohqgOvZGYdQPx8fKl8GEIHVsE/U1e5vEUB+0frd7GMPy8zpfX6sEaCMuCIlM7CPoQZtHjzgZLkKsCTgwQuuBf+9v0qUsdOuWnfVyzR/+RrJj7keid3/Sx+EEbTb7Ez4gozfltSpABMthYWBwZqQT4zPfqlHwWEI7Q7i1trSl/YpDHbFYCdhDQZ/b9OiR4kOE+C5TlUYaZVAhxSAOkwFfV4X0fUc4Xu+rgn1PL0vS39YmsF8OZ+j4c6hEchumqpPo/9gz/+Iy0IKjR81s6QzEbG7pomwY7yVfx7GVRJoOUu6Y/mhItP23uQjUVlpF50gzhACPLkoYTOGicGPb0R7LKVOxr34C8Gt89hP97Uw2o8xfoGy5oNeNIh9f2yVV2q/0F3+cXg1SK4mmQh1fPAZ3A3YMRi4r4Q3L83EcOi1O+QfuJvWWqTqenbpBKAALU85pKX97+murH26kh0L2Ypt2kCszk7MbUoiTjE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6753.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(376002)(346002)(136003)(39860400002)(230273577357003)(230173577357003)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(41300700001)(55016003)(9686003)(26005)(53546011)(7696005)(71200400001)(6506007)(83380400001)(66574015)(316002)(86362001)(52536014)(8936002)(110136005)(478600001)(64756008)(966005)(76116006)(66556008)(82960400001)(66446008)(66946007)(66476007)(122000001)(38100700002)(38070700009)(84970400001)(5660300002)(2906002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dm8yNlFCditiQzhOaTRPQ0M1TFBzL0pObVlGNmw3OEdrcERUN29BUUEyVjkx?=
 =?utf-8?B?eHNZTHp4cGlDbkhyWGMxSktaTXJYNFBEMzQzUGM3QkhpTW9YODZ0RUtsaW5M?=
 =?utf-8?B?OUEvN1QwRk1XK3hrS1BoZC8rQ0RrTURBTzhhSlpweVk3Zjl5RyttL2dUQ0dJ?=
 =?utf-8?B?ZzJxREZ6UjVjb0NzZ3U3eVVpOFpoa1JVeEZ4OXlmblZEN1YzUnpRUXJJOG5X?=
 =?utf-8?B?Y3dIN0hTQTdPUkw1dzZFd0F5eWQ4cmM5U2ZBbkcyOVh1NTJoMUVUOFZuRFlq?=
 =?utf-8?B?RGN6d0UzNHZNOTZvcXBMa0t3YUZ2enBlelV5ZVd5dGhocjZOWEFBdHdVaW0z?=
 =?utf-8?B?akxNdmtBK2I2NVMvLzhlMXVtK0JuZExWSkZqeEFzWStYaE4vRTFIWnVLMTlO?=
 =?utf-8?B?TUM5TGthSGUzUmRtZlVaRnF2bzBYdGpyTjhVdGprQmh0cUlFRkNIZEFadDN1?=
 =?utf-8?B?eDNiRDRmdyt4VFIyWlc0STc1OEtob3RFVGVxTFJGZEF6aUNiYlRmTTZRVDUw?=
 =?utf-8?B?T1RCbHN2Q3BDazhTRG9mT21zOTk5cm1HQ2p4ZVhIM3dUWEMwVlFVOUNJTDRE?=
 =?utf-8?B?WE1wTXFBUFhKWGZxN0JwZzN5cm9HbFNnNWZGKzRRV3JVZXBDL1k1dlFLVFY3?=
 =?utf-8?B?M2NwVTVHZHJTUWZjSmpVR3FTck15dlF4ZUtoTjY0eGJIUG1aOFJQU3huYm9F?=
 =?utf-8?B?NVhEZnlsYTRic0dweGU0SkRZK1ZjMGx3MjlDcEFvT2w0a2t1R212NzhiaW12?=
 =?utf-8?B?ZVZUZ2lsQzhaMWZndVAvaDFtelp3RGFsR3NmSEhhR1FpeERFVmJuUDVnR0lp?=
 =?utf-8?B?Sit6eFMzaHBRMTZFMHZYZmQ4aHNsNzJwTzhaalhKWjlXU1RHbzlzQ0Y0dzZq?=
 =?utf-8?B?MXliejJCWkVuS3dqSC9EM1Zob0YwN0QzTHVrZG5JV2d0ZzRzRWtzL3JZZWRw?=
 =?utf-8?B?cVAxaU1mOUx6bG9USlJNR29HeHk2R1BFRkEyMFFweXZFaWFab2ZKM2NJVHB2?=
 =?utf-8?B?UDVsMzVSMThYeU1xZnViTVo5S2o3SlJXL0djMjBVTnZWM2JycnN6c3VQZWNO?=
 =?utf-8?B?R1RqMlFGT25FQVJrZW1lUHIxSktqUnZiUkg0QjVabkxrZkN3Z2pYbms5Vzhx?=
 =?utf-8?B?SWxmTnBpVGcrdElNUnB4cWJNZnBudTJBc1dyZm90b2ZpVTA2T2JVOWppYk9L?=
 =?utf-8?B?N1lobUhnVTdZSGpFdFk4YTg1dHdVMlhEKzI0c1Q5b1dQMmJ0ek16am5qQXds?=
 =?utf-8?B?RTA2V3F6ejltUWpKcWR5a051MjdacU5zQkZjREFiVGMzR1RWVUtQbG5xK2Yy?=
 =?utf-8?B?MUFPZGVsRjA3cVFEcU5TczlKbER5UXdMSnFhakV5eHkyNENTOFBuYi9aSDlm?=
 =?utf-8?B?ZXNFaW1pdkVUaDd3ZTNJd25xK1NPc0RPK2VhVWRETjVQVVdhSDlSQUNrbHU0?=
 =?utf-8?B?UXhWZG5aZUZCakFxS1JiVW1JOGJGWklUbEtnWnFSSksvWnlpY3J0aTYyd1NY?=
 =?utf-8?B?alYxTllvWmU5MHVUZ1ovaHJqSHFsQ2x1M1FLUEhLMDYzV1czN2VzdFNIcmFS?=
 =?utf-8?B?akc1VzMvcG80R0xoNUk3UUk0bFNma0diU3hkS1o3ZCtXdlF0VnVlaTdFanRE?=
 =?utf-8?B?aWhKbXpUYTFCMHFlaU94czRVQU9HcGtwcHBhUkFZUGQ5Yms2RndCSjNMK0ZL?=
 =?utf-8?B?bUZZRCsxbUpaOFRmaDJDd3Y1ZitiRnFIWTRSWmpveTU4Wkd3SHdwTGlURDBB?=
 =?utf-8?B?Mk11c2pJTUhKMG1BTWNmSHlCVStsWEpSZHovaXkrb1VPd3RBbmwwZXB2WmRI?=
 =?utf-8?B?SnQ1ZnN2bDNPdnZqeHRLU1BsVU1VRFJweXF6QXptWldiNytqL0F6cjR3WUtz?=
 =?utf-8?B?UkFLMHNURVRWK2NtS01xTnk3ekgvVG4rdEJvM2pLaXRtOE1GaHJ1ejNYWjlI?=
 =?utf-8?B?K0xrOUFkS2lxYXQ2am4vZEtXd3RvbWM1czlVY3VzT0k5L2thaGNoN3l2SUxy?=
 =?utf-8?B?cGZ3a3I0bnpmc0phLzFCS2hPRlB4SnZrTTQ5U3VQeUlCaCtVek4vTnU4TXR5?=
 =?utf-8?B?bG4vVnJ1WVNTUDVhc2Fva2hjaDdORi93bXhGbXpDU1RhWHg1ODlhVkFXSkFn?=
 =?utf-8?B?aTBkUjFzZDNOOUs1NjcwMVNtVzFsV240Q2VJU2s2MTFGSXlDTndOQnhGMU5t?=
 =?utf-8?B?bVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6753.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b7b1793-1347-4544-1ef7-08dc17fc1a98
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jan 2024 08:04:32.4942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l3HzgFB9zIfe3K8Pmj9qrtFu9PQF1Bu3gzn2DNpu148cBmQMQGJCcuidNYPe2XyDiON1QQ+OJ+fzVs4UHA5LyH0c6JWgUC3Pjk3XhOkQPug=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7951
X-OriginatorOrg: intel.com
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTI3NzQ0LyAt
IFJlLXJlcG9ydGVkLg0KDQpUaGFua3MsDQpUZWphc3JlZQ0KDQotLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZyYSA8aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFNhYXJpbmVuLCBKYW5pDQpTZW50OiBNb25k
YXksIERlY2VtYmVyIDE4LCAyMDIzIDQ6MDUgUE0NClRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnOyBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PjsgSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNClN1YmplY3Q6IFJFOiDinJcg
RmkuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNTogQ3Vyc29yIHZibGFuayBldmFzaW9uDQoN
CkhpLCANCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxp
bnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiANCj4g
UGF0Y2h3b3JrDQo+IFNlbnQ6IFdlZG5lc2RheSwgRGVjZW1iZXIgMTMsIDIwMjMgMTE6MDggUE0N
Cj4gVG86IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IOKclyBGaS5D
SS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBDdXJzb3IgdmJsYW5rIGV2YXNpb24NCj4gDQo+
IFBhdGNoIERldGFpbHMNCj4gU2VyaWVzOglkcm0vaTkxNTogQ3Vyc29yIHZibGFuayBldmFzaW9u
DQo+IFVSTDoJaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMjc3NDQv
DQo+IFN0YXRlOglmYWlsdXJlDQo+IERldGFpbHM6CWh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyNzc0NHYxL2luZGV4Lmh0bWwNCj4gDQo+IENJIEJ1
ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzE0MDE3IC0+IFBhdGNod29ya18xMjc3NDR2MQ0K
PiANCj4gDQo+IFN1bW1hcnkNCj4gDQo+IA0KPiBGQUlMVVJFDQo+IA0KPiBTZXJpb3VzIHVua25v
d24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTI3NzQ0djEgYWJzb2x1dGVseSBuZWVk
IA0KPiB0byBiZSB2ZXJpZmllZCBtYW51YWxseS4NCj4gDQo+IElmIHlvdSB0aGluayB0aGUgcmVw
b3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcyANCj4gaW50
cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTI3NzQ0djEsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVh
bSANCj4gKEk5MTUtY2ktDQo+IGluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZykgdG8gYWxsb3cg
dGhlbSB0byBkb2N1bWVudCB0aGlzIG5ldyANCj4gZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJl
ZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+IA0KPiBFeHRlcm5hbCBVUkw6IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya18xMjc3NDR2MS9p
bmRleC5odG1sDQo+IA0KPiANCj4gUGFydGljaXBhdGluZyBob3N0cyAoMzcgLT4gMzcpDQo+IA0K
PiANCj4gQWRkaXRpb25hbCAoMSk6IGJhdC1ycGxzLTINCj4gTWlzc2luZyAoMSk6IGZpLXNuYi0y
NTIwbQ0KPiANCj4gDQo+IFBvc3NpYmxlIG5ldyBpc3N1ZXMNCj4gDQo+IA0KPiBIZXJlIGFyZSB0
aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluDQo+IFBh
dGNod29ya18xMjc3NDR2MToNCj4gDQo+IA0KPiBJR1QgY2hhbmdlcw0KPiANCj4gDQo+IFBvc3Np
YmxlIHJlZ3Jlc3Npb25zDQo+IA0KPiANCj4gKglpZ3RAa21zX3BtX3JwbUBiYXNpYy1ydGU6DQo+
IA0KPiAJKgliYXQtcnBscy0yOiBOT1RSVU4gLT4gQUJPUlQgPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0K
PiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjc3NDR2MS9iYXQtcnBscy0yL2ln
dEBrbXNfcG1fcnBtQGJhDQo+IHNpYy0NCj4gcnRlLmh0bWw+DQpVbnJlbGF0ZWQuIFBsZWFzZSBy
ZS1yZXBvcnQgDQo+IA0KPiANCj4gS25vd24gaXNzdWVzDQo+IA0KPiANCj4gSGVyZSBhcmUgdGhl
IGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3JrXzEyNzc0NHYxIHRoYXQgY29tZSBmcm9tIGtub3du
IGlzc3VlczoNCj4gDQo+IA0KPiBDSSBjaGFuZ2VzDQo+IA0KPiANCj4gSXNzdWVzIGhpdA0KPiAN
Cj4gDQo+ICoJYm9vdDoNCj4gDQo+IAkqCWJhdC1qc2wtMTogUEFTUyA8aHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvQ0lfRFJNXzE0MDE3L2JhdC1qc2wtMS9ib290
Lmh0bWw+ICAtPiBGQUlMIDxodHRwczovL2ludGVsLWdmeC0gDQo+IGNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEyNzc0NHYxL2JhdC1qc2wtMS9ib290Lmh0bWw+ICANCj4gKGk5MTUj
ODI5MyA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvODI5
Mz4gKQ0KPiANCj4gDQo+IElHVCBjaGFuZ2VzDQo+IA0KPiANCj4gSXNzdWVzIGhpdA0KPiANCj4g
DQo+ICoJaWd0QGRlYnVnZnNfdGVzdEBiYXNpYy1od21vbjoNCj4gDQo+IAkqCWJhdC1ycGxzLTI6
IE5PVFJVTiAtPiBTS0lQIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+
IHRpcC9QYXRjaHdvcmtfMTI3NzQ0djEvYmF0LXJwbHMtMi9pZ3RAZGVidWdmc190ZXN0QGJhc2lj
LWh3bW9uLmh0bWw+DQo+IChpOTE1IzkzMTggPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9y
Zy9kcm0vaW50ZWwvaXNzdWVzLzkzMTg+ICkNCj4gDQo+ICoJaWd0QGdlbV90aWxlZF9wcmVhZF9i
YXNpYzoNCj4gDQo+IAkqCWJhdC1ycGxzLTI6IE5PVFJVTiAtPiBTS0lQIDxodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMTI3NzQ0djEvYmF0LXJw
bHMtMi9pZ3RAZ2VtX3RpbGVkX3ByZWFkX2Jhc2ljLmh0bWw+ICANCj4gKGk5MTUjMzI4MiA8aHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMzI4Mj4gKQ0KPiAN
Cj4gKglpZ3RAa21zX2N1cnNvcl9sZWdhY3lAYmFzaWMtYnVzeS1mbGlwLWJlZm9yZS1jdXJzb3It
bGVnYWN5Og0KPiANCj4gCSoJYmF0LXJwbHMtMjogTk9UUlVOIC0+IFNLSVAgPGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya18xMjc3NDR2MS9iYXQt
cnBscy0yL2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBiYXNpYy1idXN5LWZsaQ0KPiBwLSBiZWZvcmUt
Y3Vyc29yLWxlZ2FjeS5odG1sPiAgKGk5MTUjNDEwMyANCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQxMDM+ICkgKzEgb3RoZXIgdGVzdCANCj4gc2tp
cA0KPiANCj4gKglpZ3RAa21zX2RzY0Bkc2MtYmFzaWM6DQo+IA0KPiAJKgliYXQtcnBscy0yOiBO
T1RSVU4gLT4gU0tJUCA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0
aXAvUGF0Y2h3b3JrXzEyNzc0NHYxL2JhdC1ycGxzLTIvaWd0QGttc19kc2NAZHNjLWJhc2ljLmh0
bWw+ICANCj4gKGk5MTUjMzU1NSA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9p
bnRlbC9pc3N1ZXMvMzU1NT4gIC8gDQo+IGk5MTUjMzg0MCA8aHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMzg0MD4gKQ0KPiANCj4gKglpZ3RAa21zX2ZvcmNl
X2Nvbm5lY3Rvcl9iYXNpY0Bmb3JjZS1sb2FkLWRldGVjdDoNCj4gDQo+IAkqCWJhdC1ycGxzLTI6
IE5PVFJVTiAtPiBTS0lQIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+
IHRpcC9QYXRjaHdvcmtfMTI3NzQ0djEvYmF0LXJwbHMtMi9pZ3RAa21zX2ZvcmNlX2Nvbm5lY3Rv
cl9iYXNpY0Bmb3JjZS0NCj4gbG9hZC0NCj4gZGV0ZWN0Lmh0bWw+ICAoZmRvIzEwOTI4NQ0KPiA8
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5Mjg1PiApDQo+
IA0KPiAqCWlndEBrbXNfcGlwZV9jcmNfYmFzaWNAcmVhZC1jcmMtZnJhbWUtc2VxdWVuY2VAcGlw
ZS1kLWVkcC0xOg0KPiANCj4gCSoJYmF0LXJwbHAtMTogUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvQ0lfRFJNXzE0MDE3L2JhdC1ycGxwLTEvaWd0QGtt
c19waXBlX2NyY19iYXNpY0ByZWFkLWNyYy1mcmFtZS0NCj4gc2VxdWVuY2VAcGlwZS1kLWVkcC0x
Lmh0bWw+ICAtPiBBQk9SVCANCj4gPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS0NCj4gdGlwL1BhdGNod29ya18xMjc3NDR2MS9iYXQtcnBscC0xL2lndEBrbXNfcGlwZV9jcmNf
YmFzaWNAcmVhZC1jcmMtZnJhbQ0KPiBlLSBzZXF1ZW5jZUBwaXBlLWQtZWRwLTEuaHRtbD4gIChp
OTE1Izg2NjggDQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lz
c3Vlcy84NjY4PiApDQo+IA0KPiAqCWlndEBrbXNfcG1fYmFja2xpZ2h0QGJhc2ljLWJyaWdodG5l
c3M6DQo+IA0KPiAJKgliYXQtcnBscy0yOiBOT1RSVU4gLT4gU0tJUCA8aHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzEyNzc0NHYxL2JhdC1ycGxz
LTIvaWd0QGttc19wbV9iYWNrbGlnaHRAYmFzaWMtDQo+IGJyaWdodG5lc3MuaHRtbD4gIChpOTE1
IzUzNTQNCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVz
LzUzNTQ+ICkNCj4gDQo+IHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMg
bWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIA0KPiBjb21wdXRpbmcgdGhlIHN0YXR1cyBvZiB0aGUg
ZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuDQo+IA0KPiANCj4gQnVp
bGQgY2hhbmdlcw0KPiANCj4gDQo+ICoJTGludXg6IENJX0RSTV8xNDAxNyAtPiBQYXRjaHdvcmtf
MTI3NzQ0djENCj4gDQo+IENJLTIwMTkwNTI5OiAyMDE5MDUyOQ0KPiBDSV9EUk1fMTQwMTc6IDU4
YWM0ZmZjNzViNjJlNjAwN2U4NWFlNjc3NzgyMGU3N2MxMTNiMDEgQCANCj4gZ2l0Oi8vYW5vbmdp
dC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+IElHVF83NjM5OiAxOGFmYzA5ZTM2MmI2
MDVhM2M4OGMwMDAzMzE3MDhmMTA1ZDJjMjNhIEAgDQo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9kcm0vaWd0LWdwdS10b29scy5naXQNCj4gUGF0Y2h3b3JrXzEyNzc0NHYxOiA1OGFj
NGZmYzc1YjYyZTYwMDdlODVhZTY3Nzc4MjBlNzdjMTEzYjAxIEAgDQo+IGdpdDovL2Fub25naXQu
ZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPiANCj4gDQo+IExpbnV4IGNvbW1pdHMNCj4g
DQo+IA0KPiBlMWMyNzdmOWFlNTUgUmV2ZXJ0ICJkcm0vaTkxNS94ZTJscGQ6IFRyZWF0IGN1cnNv
ciBwbGFuZSBhcyByZWd1bGFyIA0KPiBwbGFuZSBmb3IgRERCIGFsbG9jYXRpb24iDQo+IGI3MjY3
NWMyOGIwNSBkcm0vaTkxNTogUGVyZm9ybSB2YmxhbmsgZXZhc2lvbiBhcm91bmQgbGVnYWN5IGN1
cnNvciANCj4gdXBkYXRlcw0KPiAzYWFmODBiNTkzMzQgZHJtL2k5MTU6IE1vdmUgaW50ZWxfdmJs
YW5rX2V2YWRlKCkgJiBjby4gaW50byANCj4gaW50ZWxfdmJsYW5rLmMNCj4gMWYxODNmZTA5MmI2
IGRybS9pOTE1OiBNb3ZlIHRoZSBtaW4vbWF4IHNjYW5saW5lIHNhbml0eSBjaGVjayBpbnRvDQo+
IGludGVsX3ZibGFua19ldmFkZSgpDQo+IDJhZjVkMGJkY2MzNCBkcm0vaTkxNTogRXh0cmFjdCBp
bnRlbF92YmxhbmtfZXZhZGUoKSBmYTU4M2Y5MDMyZWYgDQo+IGRybS9pOTE1OiBJbmNsdWRlIG5l
ZWRfdmx2X2RzaV93YSBpbiBpbnRlbF92YmxhbmtfZXZhZGVfY3R4IA0KPiAyMzU3NzBlOGFiM2Eg
ZHJtL2k5MTU6IEludHJvZHVjZSBzdHJ1Y3QgaW50ZWxfdmJsYW5rX2V2YWRlX2N0eA0KPiA3NGRl
Yjc2MjQxNzUgZHJtL2k5MTU6IFJlb3JkZXIgZHJtX3ZibGFua19wdXQoKSB2cy4gbmVlZF92bHZf
ZHNpX3dhDQo+IGIyODU5ZTJkNTcxNCBkcm0vaTkxNTogRGVjb3VwbGUgaW50ZWxfY3J0Y192Ymxh
bmtfZXZhZGVfc2NhbmxpbmVzKCkgDQo+IGZyb20gYXRvbWljIGNvbW1pdHMNCg0K
