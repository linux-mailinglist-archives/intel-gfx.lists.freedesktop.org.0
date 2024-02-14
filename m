Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB19785439F
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 08:47:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0121C10E030;
	Wed, 14 Feb 2024 07:47:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gik36bDz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 670B810E08D
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 07:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707896856; x=1739432856;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qCOmco7rddJeRBR6QAaXNfENeNQspCNmMDlRxyHmgL8=;
 b=gik36bDznCUnnO7/IlkrfBgIy/f93YuuBv8sZ44N+S5agZVfWrneFoE+
 dDqyw4EkATecfcg8PLSrqcsVHif83OmValGDPrpxDkM37T+GdDOluSGU0
 IbWSYXKfzjvHNNsY+2PyBiL8GffMMTPMV4kZgvMRzaka9oJsDXL2oGeG+
 Rgq9El6LREYLKkzpT214KhEyCoAacfpbmZhmIs+rAf1uG7BxZU2LpvXWo
 7N7cvQDNO/JryRRt+i+bIYOwDN9wtrd4lQvYhDVIIg8Clt/QYChMBZRjd
 4vxQDHBpwKu1yL7UOxZclMYI7MqFjnXBQiaVjBrOLsQSopFxKv9wr0y3l g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="2075026"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="2075026"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 23:47:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="7767330"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2024 23:47:35 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 23:47:34 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 23:47:33 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 13 Feb 2024 23:47:33 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 13 Feb 2024 23:47:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hY5n8w4bQF09c0WsemZ62/Vcgmxt2wnNSOUWEja072WuNaCudGG/vZU23jwb+cbdM+DxSzTWAzM6WEgM1j2R7gD7FhOnpE/Yqoa7GGDQTSEN/iGnu3SYMpV2iC/p6zx5gia7wkM/QJLZgrPQHo/DH1eDyYMfwTF/k0qcovetNe/yN9GdIxJsG3YASbAnFDmvZt81Gxy6cm/yVq7HvWT163aYm7wRBeTvV7NmQc+Dwe8uJ9sb0xiqHT03LyNUvZRF/XUihM4U2MChyty4wSVv+k3VUCAEJDt+zWRf4pMPmOntEVN9ytYMw/rruS3KFuO7IJ+Z3LvOQ3tdDxmAcqHVNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qCOmco7rddJeRBR6QAaXNfENeNQspCNmMDlRxyHmgL8=;
 b=afPekagE8NWktizdBdgeQ3lsNU4SSgVYenOP50k3b2hCMBJa2AEwiRREDzRLUdQ+p+8VEAONKxY7fyrRWFTAt2Bf8yZFhkCXFt1AxNXdE8g2X5x+HFFqOSk5eYKQu8nnYbMBbDfor+vzWmMIN3Fx9Y3FJVrsiRwqwGulFKeNvG57MOni+4N5qcxmLn0ci7knPMllKdy3TcjW317jg6X6ynlU2m3gp9gTYKkcpAVL/n/dHjk9ekOrI+j99dh2fg0pz83z2zMHy16V+NCuAi/wpR/se7zfYUSxknUxIuhg08/s+26XUdha3ob08Fgu59nKfNfw+93bsTj4S/abqdBBjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SN7PR11MB6898.namprd11.prod.outlook.com (2603:10b6:806:2a6::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.25; Wed, 14 Feb
 2024 07:47:31 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d%3]) with mapi id 15.20.7292.027; Wed, 14 Feb 2024
 07:47:31 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Vivekanandan,
 Balasubramani" <balasubramani.vivekanandan@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "Taylor, Clinton A" <clinton.a.taylor@intel.com>, 
 "Kalvala, Haridhar" <haridhar.kalvala@intel.com>, "Sripada, Radhakrishna"
 <radhakrishna.sripada@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>
Subject: RE: [PATCH] drm/i915/display: update pll values in sync with Bspec
 for MTL
Thread-Topic: [PATCH] drm/i915/display: update pll values in sync with Bspec
 for MTL
Thread-Index: AQHaXxP4z7We9jwpA0yGe+ELDBOxWLEJdb0A
Date: Wed, 14 Feb 2024 07:47:31 +0000
Message-ID: <MW4PR11MB7054D3CE96E28B613C92697FEF4E2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240214070713.1028297-1-ravi.kumar.vodapalli@intel.com>
In-Reply-To: <20240214070713.1028297-1-ravi.kumar.vodapalli@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SN7PR11MB6898:EE_
x-ms-office365-filtering-correlation-id: c4468c3f-3e8e-4526-831d-08dc2d3132ea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e0/D4tGc2nSXtj6CSy5eMJtUKvaKhtpuO2dqGlDAq80oeBHmhK32wYOm4ZcOJIJmp9nvPxkpo+mltpue2K5cy7LDryypI2xM3pj4uPM3k18Sgg6dovCHZ5GFLmE2CsGfOm18ODVzSl6bRWBMxTigxW/bL3NkcqTZJK0Z+NTgUILsR+LfJ4eWOaHHkAljljzpWTtPSK6aAxTpU3ImSGgjBBXu8GMgG2F0yqiCbxPuopevvQhqaIbyWolNhxhWKPD0aWv7GFzuNk4eUZLHIWgGuydCxlQBfNCU+l+qyE4xbWLserC1Oni/SSmFl5OmqNnwZ1x4r2EGsEsoD9FjddZHDWMUCQth/gcu4WFu/k5YSceML6PDWG1vD2KMUsZqnsdxemGD77qJdPfowqGwM7fKxuL+aBpu6ojQUb0tSc8TNb2yuicDVz+yq76AympAijXq/DJuzOL8V5SsRDonJ8XKbXwDUQZtMUgNj+exZpPncbV6efF7qxOIMA0AiJaBvPeHfgUdIYLR0yauvpVduPeYiwwLQQbK3DVnxlmOOSRkPDedFdUJhVGz1Nxwn+KddO1f5ExkMybbUIDBT1tzRPME70ZtKA1HOnUKhgEAla8ZImj9ri6UqRFGs3nEV/KSq3D4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39860400002)(376002)(346002)(366004)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(2906002)(15650500001)(55016003)(107886003)(478600001)(83380400001)(66556008)(66946007)(71200400001)(7696005)(8676002)(66476007)(64756008)(8936002)(4326008)(5660300002)(76116006)(26005)(53546011)(9686003)(33656002)(52536014)(66446008)(38070700009)(41300700001)(122000001)(54906003)(110136005)(6506007)(316002)(86362001)(38100700002)(82960400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S09HMjMrVVl5bjJGOEVXd214L2oyR2p6TmJkNmt6NW9sUmRqcFllUzQ0QzNt?=
 =?utf-8?B?NmhQUEI3TWV0U0hPUDMzeVViWEo0c1JhWkRER0lhK1MveTQ2SC9meE9WREFv?=
 =?utf-8?B?dDFhL3pKVHZKaHhvNFk0dEp2b3hLMTY2OXllRlo1NmYwMFRCZmVkVWQ4MzR6?=
 =?utf-8?B?V2k3ZURFdHdLcy8vVGk0aVJTVjBWR0NkSm82WVV5cFh1enN3ZmttZ0ZjWXhO?=
 =?utf-8?B?NnJyOHFxV2ZPRkRPbjhTREozSDE2VlBoVXdMREVMY1pmSWd0RjlUdC8xY1JG?=
 =?utf-8?B?ekJHOXZZRS94T28rWkpacldqTDlaN3hmZFRPK0Rvb25SeW11RFJ2WmZ1YjYv?=
 =?utf-8?B?d3FPS2lhVldpd1NPemZwY3M2MURldWp4RkJuNWpXZ1h3MzZUYzNQTVQ5RmYz?=
 =?utf-8?B?QkZsZU5xRFVSc1ZiRVBLVkVFYTJieS9jZThkNHlYNFZoUVRObnVqWjZES3M5?=
 =?utf-8?B?SmFiT1FZR0tWdzhEYkVxRU5zZXhHOERVUEFqdHVuTXRUYStOVkVQYlpMREtP?=
 =?utf-8?B?WFNneUZxQ1V2alVhU3M0R0hKUGJET1dDM3Zvbkw1Slp2VjBTblVQbC83R0JJ?=
 =?utf-8?B?T2xQbmQ4V0Fuc29NUU15VnBvZy85ajZ1Nkt3eTBUcVUyR001SklYZnpYZ0gw?=
 =?utf-8?B?dUorMVFSWFN5OEF2djNFYVRxaE5pbW51UG8ybE9pY3FXdWVvcThCUGNlbVBs?=
 =?utf-8?B?NlRmLzVCTU9GWnJpcTRBZmhtUTFncFVzcjRTSDNTYmJFVDlNdnpHT2J0S0hw?=
 =?utf-8?B?NXJGNEpydmVZcHNVbkJsU3dGZERuTU5hMTdMTDM1UDJkT2dteTVXakpuRUox?=
 =?utf-8?B?NDM0R2preFFIUUt6Yko1LzBTbG5RTXd1OWdsbXJCVzY3ZHNkS29wQUFzVW5Q?=
 =?utf-8?B?a3ZQRjhLSnFyLzhlSVd6cGcyeFF4bzVIUGFQcTRWclFaZVBDcjMyTmlKbGFv?=
 =?utf-8?B?dUhQejBwak91NXFGa3FpOUVoVVJmVjl5TmhUNzJQSjZ5YnlrN1JVS1FHUU5E?=
 =?utf-8?B?L1Rud2ZDak5PWnRLbFZ0T3YvZURuZXFmeXZXRkJ3TkRHQUQ1OVlQWUFWT2dU?=
 =?utf-8?B?TFJMM09McVhNWWJZVHdhdkQ2b0lGT3dJSTI1R0wxekYxV0NxQTg5RXQ5TVRa?=
 =?utf-8?B?UFFDeE8yYzBhdXJBZThRdGpuaVNpaGt5SVVla0xyNU9ha2JWWnJhbkE5SjA4?=
 =?utf-8?B?SjFUTnZsR3FaRksyUVkrVGdSWUJNanE4VnJ1SXcyOCt5SkY5VklwNzU0UVcr?=
 =?utf-8?B?alB4eTRPZ1pKbFJtOFhreHpvR2VLMTROb24yTUYrVGNoL3BTTHRIT1c0Y0ov?=
 =?utf-8?B?R2s2WURwMzVmWEJnYm0rZXYrM1U4eG4rOEdxejNTTFQ0SWpFcnVMOSt5T0Ux?=
 =?utf-8?B?T21uTlZGeXQ4OEovZDRsTXo3dzRpN0tPZWhoR3B3K2x4aUM4dVh6N0J0Z1pK?=
 =?utf-8?B?OE00aWNpak5nR0xYTzU5WVpGVkhpNitpTlJyaWZ6d2JmeGxtbWN1SmFNUUFl?=
 =?utf-8?B?Nk95dTVWQ1VLWWpWZi9UOG83Y3hTY1lnT1dBUXc0WHRpY3FCL0x6S3oyL050?=
 =?utf-8?B?ekpUNFdranNlTWZZbWtpWlJQQmgrUTNYNGdaZGRTOG9VRWFRSjAyZmpnY3Z1?=
 =?utf-8?B?YnpyeGp4K0NDQVUydjdjNlgrT2w4NjVSVkhXVTRZTkM2L2htZ0ZjQ2hMTDR4?=
 =?utf-8?B?U1BVNnVTdXRidTc3b0JMVG5xZ21CM2VBWUdWY1RzSjBlaGwySm0yaU9uNTB3?=
 =?utf-8?B?aWhkTE92aktKRmYzcnpGc2ZDdGpUc1FBMXR3YU04U0h5dmZxdkdpM3U3NEQv?=
 =?utf-8?B?ZmpvVUJpZU5KOHVSK1lLeFE5ZzJ6M2Z3V2dxQWdJNFFwUkJ3YnNkYkt2eEx6?=
 =?utf-8?B?MU5tdHVlZTdHTjY2RWp5MUw4L1NVNHBITm0yU0creFYzN3dTRGpBSnBPL2NG?=
 =?utf-8?B?ZnZOa1dESEVZK3RIWnVTdnhOWXRRRGxwYWN4QzJNbTFlZjFBM3FpNDE3WkVE?=
 =?utf-8?B?aWgweW56Q3VSUmFRMTQyS1Brb0VCQ0RhNVg0UlQ3dDlJbkw4OC95OTJVMXhw?=
 =?utf-8?B?TVlsaElUYncvS3loMUQwQlhZVjAvODk1UEdrTWZESkhwV21pRlZUUjZRQXNF?=
 =?utf-8?Q?Xs93ozDpsgJmiOEn1DFVjHHaS?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4468c3f-3e8e-4526-831d-08dc2d3132ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2024 07:47:31.0495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GyuzzX0URwpwhfXZ+NU5byzW8ZjgnlBRrkwFK5hQQ1d3n7hmKKfehBm+1/1TfQbxeru8ONhiAdfKOEyq3Aoi7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6898
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFJhdmkgS3VtYXIg
Vm9kYXBhbGxpDQo+IFNlbnQ6IFdlZG5lc2RheSwgRmVicnVhcnkgMTQsIDIwMjQgOTowNyBBTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogUm9wZXIsIE1hdHRo
ZXcgRCA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT47IFZpdmVrYW5hbmRhbiwgQmFsYXN1YnJh
bWFuaSA8YmFsYXN1YnJhbWFuaS52aXZla2FuYW5kYW5AaW50ZWwuY29tPjsNCj4gRGUgTWFyY2hp
LCBMdWNhcyA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPjsgVGF5bG9yLCBDbGludG9uIEEgPGNs
aW50b24uYS50YXlsb3JAaW50ZWwuY29tPjsgS2FsdmFsYSwgSGFyaWRoYXINCj4gPGhhcmlkaGFy
LmthbHZhbGFAaW50ZWwuY29tPjsgU3JpcGFkYSwgUmFkaGFrcmlzaG5hIDxyYWRoYWtyaXNobmEu
c3JpcGFkYUBpbnRlbC5jb20+OyBBdHdvb2QsIE1hdHRoZXcgUw0KPiA8bWF0dGhldy5zLmF0d29v
ZEBpbnRlbC5jb20+OyBCaGFkYW5lLCBEbnlhbmVzaHdhciA8ZG55YW5lc2h3YXIuYmhhZGFuZUBp
bnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTUvZGlzcGxheTogdXBkYXRlIHBs
bCB2YWx1ZXMgaW4gc3luYyB3aXRoIEJzcGVjIGZvciBNVEwNCj4gDQo+IERQL2VEUCBhbmQgSERN
SSBDMjAgUEhZIFBMTCB2YWx1ZXMgd2VyZSB1cGRhdGVkIGZvciBNVEwgcGxhdGZvcm0NCj4NCg0K
TG9va3MgdmFsaWQgdXBkYXRlIHRvIHRoZSBwbGwgdGFibGVzLg0KDQpSZXZpZXdlZC1ieTogTWlr
YSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCiANCj4gU2lnbmVkLW9mZi1ieTogUmF2
aSBLdW1hciBWb2RhcGFsbGkgPHJhdmkua3VtYXIudm9kYXBhbGxpQGludGVsLmNvbT4NCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYyB8IDMyICsr
KysrKysrKystLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwg
MTYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2N4MF9waHkuYw0KPiBpbmRleCAyODhhMDBlMDgzYzguLjY0ZTBmODIwYTc4OSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gQEAg
LTg0OCwxMCArODQ4LDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRl
IG10bF9jMjBfZHBfaGJyMyA9IHsgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0
YXRlDQo+IG10bF9jMjBfZHBfdWhicjEwID0gew0KPiAgCS5jbG9jayA9IDEwMDAwMDAsIC8qIDEw
IEdicHMgKi8NCj4gIAkudHggPSB7CTB4YmUyMSwgLyogdHggY2ZnMCAqLw0KPiAtCQkweDQ4MDAs
IC8qIHR4IGNmZzEgKi8NCj4gKwkJMHhlODAwLCAvKiB0eCBjZmcxICovDQo+ICAJCTB4MDAwMCwg
LyogdHggY2ZnMiAqLw0KPiAgCQl9LA0KPiAtCS5jbW4gPSB7MHgwNTAwLCAvKiBjbW4gY2ZnMCov
DQo+ICsJLmNtbiA9IHsweDA3MDAsIC8qIGNtbiBjZmcwKi8NCj4gIAkJMHgwMDA1LCAvKiBjbW4g
Y2ZnMSAqLw0KPiAgCQkweDAwMDAsIC8qIGNtbiBjZmcyICovDQo+ICAJCTB4MDAwMCwgLyogY21u
IGNmZzMgKi8NCj4gQEAgLTE2NDEsNyArMTY0MSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfYzIwcGxsX3N0YXRlIG10bF9jMjBfaGRtaV81OTQgPSB7ICBzdGF0aWMgY29uc3Qgc3RydWN0
IGludGVsX2MyMHBsbF9zdGF0ZQ0KPiBtdGxfYzIwX2hkbWlfMzAwID0gew0KPiAgCS5jbG9jayA9
IDMwMDAwMDAsDQo+ICAJLnR4ID0geyAgMHhiZTk4LCAvKiB0eCBjZmcwICovDQo+IC0JCSAgMHg5
ODAwLCAvKiB0eCBjZmcxICovDQo+ICsJCSAgMHg4ODAwLCAvKiB0eCBjZmcxICovDQo+ICAJCSAg
MHgwMDAwLCAvKiB0eCBjZmcyICovDQo+ICAJCX0sDQo+ICAJLmNtbiA9IHsgMHgwNTAwLCAvKiBj
bW4gY2ZnMCovDQo+IEBAIC0xNjQ5LDggKzE2NDksOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGlu
dGVsX2MyMHBsbF9zdGF0ZSBtdGxfYzIwX2hkbWlfMzAwID0gew0KPiAgCQkgIDB4MDAwMCwgLyog
Y21uIGNmZzIgKi8NCj4gIAkJICAweDAwMDAsIC8qIGNtbiBjZmczICovDQo+ICAJCX0sDQo+IC0J
Lm1wbGxiID0geyAweDIwOWMsCS8qIG1wbGxiIGNmZzAgKi8NCj4gLQkJICAgMHg3ZDEwLAkvKiBt
cGxsYiBjZmcxICovDQo+ICsJLm1wbGxiID0geyAweDMwOWMsCS8qIG1wbGxiIGNmZzAgKi8NCj4g
KwkJICAgMHgyMTEwLAkvKiBtcGxsYiBjZmcxICovDQo+ICAJCSAgIDB4Y2EwNiwJLyogbXBsbGIg
Y2ZnMiAqLw0KPiAgCQkgICAweGJlNDAsCS8qIG1wbGxiIGNmZzMgKi8NCj4gIAkJICAgMHgwMDAw
LAkvKiBtcGxsYiBjZmc0ICovDQo+IEBAIC0xNjY2LDcgKzE2NjYsNyBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IGludGVsX2MyMHBsbF9zdGF0ZSBtdGxfYzIwX2hkbWlfMzAwID0geyAgc3RhdGljIGNv
bnN0IHN0cnVjdCBpbnRlbF9jMjBwbGxfc3RhdGUNCj4gbXRsX2MyMF9oZG1pXzYwMCA9IHsNCj4g
IAkuY2xvY2sgPSA2MDAwMDAwLA0KPiAgCS50eCA9IHsgIDB4YmU5OCwgLyogdHggY2ZnMCAqLw0K
PiAtCQkgIDB4OTgwMCwgLyogdHggY2ZnMSAqLw0KPiArCQkgIDB4ODgwMCwgLyogdHggY2ZnMSAq
Lw0KPiAgCQkgIDB4MDAwMCwgLyogdHggY2ZnMiAqLw0KPiAgCQl9LA0KPiAgCS5jbW4gPSB7IDB4
MDUwMCwgLyogY21uIGNmZzAqLw0KPiBAQCAtMTY3NCw4ICsxNjc0LDggQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBpbnRlbF9jMjBwbGxfc3RhdGUgbXRsX2MyMF9oZG1pXzYwMCA9IHsNCj4gIAkJICAw
eDAwMDAsIC8qIGNtbiBjZmcyICovDQo+ICAJCSAgMHgwMDAwLCAvKiBjbW4gY2ZnMyAqLw0KPiAg
CQl9LA0KPiAtCS5tcGxsYiA9IHsgMHgwMDljLAkvKiBtcGxsYiBjZmcwICovDQo+IC0JCSAgIDB4
N2QwOCwJLyogbXBsbGIgY2ZnMSAqLw0KPiArCS5tcGxsYiA9IHsgMHgxMDljLAkvKiBtcGxsYiBj
ZmcwICovDQo+ICsJCSAgIDB4MjEwOCwJLyogbXBsbGIgY2ZnMSAqLw0KPiAgCQkgICAweGNhMDYs
CS8qIG1wbGxiIGNmZzIgKi8NCj4gIAkJICAgMHhiZTQwLAkvKiBtcGxsYiBjZmczICovDQo+ICAJ
CSAgIDB4MDAwMCwJLyogbXBsbGIgY2ZnNCAqLw0KPiBAQCAtMTY5MSw3ICsxNjkxLDcgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jMjBwbGxfc3RhdGUgbXRsX2MyMF9oZG1pXzYwMCA9IHsg
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlDQo+IG10bF9jMjBfaGRtaV84
MDAgPSB7DQo+ICAJLmNsb2NrID0gODAwMDAwMCwNCj4gIAkudHggPSB7ICAweGJlOTgsIC8qIHR4
IGNmZzAgKi8NCj4gLQkJICAweDk4MDAsIC8qIHR4IGNmZzEgKi8NCj4gKwkJICAweDg4MDAsIC8q
IHR4IGNmZzEgKi8NCj4gIAkJICAweDAwMDAsIC8qIHR4IGNmZzIgKi8NCj4gIAkJfSwNCj4gIAku
Y21uID0geyAweDA1MDAsIC8qIGNtbiBjZmcwKi8NCj4gQEAgLTE2OTksOCArMTY5OSw4IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlIG10bF9jMjBfaGRtaV84MDAgPSB7
DQo+ICAJCSAgMHgwMDAwLCAvKiBjbW4gY2ZnMiAqLw0KPiAgCQkgIDB4MDAwMCwgLyogY21uIGNm
ZzMgKi8NCj4gIAkJfSwNCj4gLQkubXBsbGIgPSB7IDB4MDBkMCwJLyogbXBsbGIgY2ZnMCAqLw0K
PiAtCQkgICAweDdkMDgsCS8qIG1wbGxiIGNmZzEgKi8NCj4gKwkubXBsbGIgPSB7IDB4MTBkMCwJ
LyogbXBsbGIgY2ZnMCAqLw0KPiArCQkgICAweDIxMDgsCS8qIG1wbGxiIGNmZzEgKi8NCj4gIAkJ
ICAgMHg0YTA2LAkvKiBtcGxsYiBjZmcyICovDQo+ICAJCSAgIDB4YmU0MCwJLyogbXBsbGIgY2Zn
MyAqLw0KPiAgCQkgICAweDAwMDAsCS8qIG1wbGxiIGNmZzQgKi8NCj4gQEAgLTE3MTYsNyArMTcx
Niw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlIG10bF9jMjBfaGRt
aV84MDAgPSB7ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2MyMHBsbF9zdGF0ZQ0KPiBtdGxf
YzIwX2hkbWlfMTAwMCA9IHsNCj4gIAkuY2xvY2sgPSAxMDAwMDAwMCwNCj4gIAkudHggPSB7ICAw
eGJlOTgsIC8qIHR4IGNmZzAgKi8NCj4gLQkJICAweDk4MDAsIC8qIHR4IGNmZzEgKi8NCj4gKwkJ
ICAweDg4MDAsIC8qIHR4IGNmZzEgKi8NCj4gIAkJICAweDAwMDAsIC8qIHR4IGNmZzIgKi8NCj4g
IAkJfSwNCj4gIAkuY21uID0geyAweDA1MDAsIC8qIGNtbiBjZmcwKi8NCj4gQEAgLTE3MjUsNyAr
MTcyNSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlIG10bF9jMjBf
aGRtaV8xMDAwID0gew0KPiAgCQkgIDB4MDAwMCwgLyogY21uIGNmZzMgKi8NCj4gIAkJfSwNCj4g
IAkubXBsbGIgPSB7IDB4MTEwNCwJLyogbXBsbGIgY2ZnMCAqLw0KPiAtCQkgICAweDdkMDgsCS8q
IG1wbGxiIGNmZzEgKi8NCj4gKwkJICAgMHgyMTA4LAkvKiBtcGxsYiBjZmcxICovDQo+ICAJCSAg
IDB4MGEwNiwJLyogbXBsbGIgY2ZnMiAqLw0KPiAgCQkgICAweGJlNDAsCS8qIG1wbGxiIGNmZzMg
Ki8NCj4gIAkJICAgMHgwMDAwLAkvKiBtcGxsYiBjZmc0ICovDQo+IEBAIC0xNzQxLDcgKzE3NDEs
NyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2MyMHBsbF9zdGF0ZSBtdGxfYzIwX2hkbWlf
MTAwMCA9IHsgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlDQo+IG10bF9j
MjBfaGRtaV8xMjAwID0gew0KPiAgCS5jbG9jayA9IDEyMDAwMDAwLA0KPiAgCS50eCA9IHsgIDB4
YmU5OCwgLyogdHggY2ZnMCAqLw0KPiAtCQkgIDB4OTgwMCwgLyogdHggY2ZnMSAqLw0KPiArCQkg
IDB4ODgwMCwgLyogdHggY2ZnMSAqLw0KPiAgCQkgIDB4MDAwMCwgLyogdHggY2ZnMiAqLw0KPiAg
CQl9LA0KPiAgCS5jbW4gPSB7IDB4MDUwMCwgLyogY21uIGNmZzAqLw0KPiBAQCAtMTc0OSw4ICsx
NzQ5LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jMjBwbGxfc3RhdGUgbXRsX2MyMF9o
ZG1pXzEyMDAgPSB7DQo+ICAJCSAgMHgwMDAwLCAvKiBjbW4gY2ZnMiAqLw0KPiAgCQkgIDB4MDAw
MCwgLyogY21uIGNmZzMgKi8NCj4gIAkJfSwNCj4gLQkubXBsbGIgPSB7IDB4MDEzOCwJLyogbXBs
bGIgY2ZnMCAqLw0KPiAtCQkgICAweDdkMDgsCS8qIG1wbGxiIGNmZzEgKi8NCj4gKwkubXBsbGIg
PSB7IDB4MTEzOCwJLyogbXBsbGIgY2ZnMCAqLw0KPiArCQkgICAweDIxMDgsCS8qIG1wbGxiIGNm
ZzEgKi8NCj4gIAkJICAgMHg1NDg2LAkvKiBtcGxsYiBjZmcyICovDQo+ICAJCSAgIDB4ZmU0MCwJ
LyogbXBsbGIgY2ZnMyAqLw0KPiAgCQkgICAweDAwMDAsCS8qIG1wbGxiIGNmZzQgKi8NCj4gLS0N
Cj4gMi4yNS4xDQoNCg==
