Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BFF7DF55E
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 15:54:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01BE110E8D3;
	Thu,  2 Nov 2023 14:54:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80FEF10E8D3
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 14:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698936862; x=1730472862;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fSIB1DUv3MPzGtvsKrG+MtmVe0tWlREAr29+s5Imui0=;
 b=LBb/1UNDpUzRowzNIZmKAJsgw/RHOnJX3gATTeEVcsnwStoc4UU4ANnR
 LnSR8HMWjbVr0IgNP6Bvksr+xSZDG84RJd6DWEYiGpQo9m2N9TQ3XQOnx
 XBGReoZ4fDQoCAJDSwqXKAaUotyW8zK1VKnvX/jVRig3f3w37h9EYxfSP
 e69vby0CmF2dKQfoRPJcPREzX6/htwXn8/ntq17/6TPonn1xuykj+WkQO
 cHYBkcF6eYJtAiSuVPmbXhusFZ9W8gTxBpgVFesAHUck4T8kan/o8tQaY
 U8MiGMtJ8XaFTEdIaEs72X9so50NCmV7Jst+06FebuaxCT4dJVPJQFRNj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="392610802"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="392610802"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 07:54:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="878268420"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="878268420"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Nov 2023 07:54:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 07:54:21 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 07:54:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 2 Nov 2023 07:54:20 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 2 Nov 2023 07:54:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OL0bzmWMFq9pTISgCHwhaqkPJxsrHTLZ2lxcLpODbMVCp6kAVIjLstJ2SOjDMQm5/IuRx1FZFgSNnbD9aV32Jz6WzEuJ/y8BVKqQihGGkC1W3CVQ2xmixTRP/O3bXO+qbLzdNf6hAWb+mlPovq9h+fHcTQBWpiN8FdTYBHwD+ACzyIRyVi0NFFAGWaOOgXJTs4PdYoCWreiA10L3kAHBMaYs/QjDui1iawa0ngQANUXUjV8E7knAMmESlxcUJdJ5PbxqIJMC8GZ6gpVTYCtGdSvsHxbVomtpYBjTGgm855tTT0qU5MtcD4UpUHrpG3mIReDVAcQ6Zesi1xVYDWGuyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fSIB1DUv3MPzGtvsKrG+MtmVe0tWlREAr29+s5Imui0=;
 b=hFU5agS7xrSrK8EhhEnAcf+mZ8099R+R5Dbug8pwn4LfqewOcp8oSVioVZNnXbtUcapzJj9hAjObdC8DBjZtiTYzSwO69h12+NqmPCoQZvqhC4NgEX7gllzE77iMc+d8BKDJxlmZxc4XvzhWjykpM2j6k50HKD46DF9+62Y9kkj0jbEtQFCI8PnnnCHsQMEK5IXQVK2M6cwdIH2TM/t+UFkbCvfWFUJF0on3zFBPMNFP6ojve4XAQsLjiCoWQWR89ITIxNZ+SN68MhXjCm6psQze60Ms6/LI0Uw+tCl08I0eSzYA9lguyID87tBYrzl/BS8m7B9K41vUHr9XVkRaJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by BN9PR11MB5546.namprd11.prod.outlook.com (2603:10b6:408:103::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Thu, 2 Nov
 2023 14:54:18 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca35:a0cf:9a74:f348]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca35:a0cf:9a74:f348%6]) with mapi id 15.20.6954.019; Thu, 2 Nov 2023
 14:54:18 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mtl: Clear possible sticky bits on PICA message
 bus
Thread-Index: AQHaDK6J1tnoTORVwUCs0fN8gaWC47BnFu+AgAAGplA=
Date: Thu, 2 Nov 2023 14:54:18 +0000
Message-ID: <MW4PR11MB70548082087217EF87D066F6EFA6A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231101103101.156505-1-mika.kahola@intel.com>
 <169893500976.1757.2763206983162106542@gjsousa-mobl2>
In-Reply-To: <169893500976.1757.2763206983162106542@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|BN9PR11MB5546:EE_
x-ms-office365-filtering-correlation-id: c1af3d9a-b744-4111-4b39-08dbdbb39734
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Mvo/A3NtisDeZ8fkLGxnhpNjwkAv4y++S1JqCbGJNqClZhlx+Ifna/pO67X1jcPzYq2PCFj8GitskrZ6O1aPIdSVL0dG89ekwRZdRYnmmnFkhRz/3gieuELAHmkH0KT11ELCZNsSnYO/FD0MfKo/QWLmTPhFNmbu21coyX5PjmKI0vFydCNWJzs+hDHZ6pxvKg+zDw3iitDMF/rpseo4IPJSz38Y1+u60xUgmC2FXUVgoEDIT0X9P/87ODTFYPZUvk4a5UcG2HXlYvfd/Bp4ihVqGdFJeLZBnPVUj72o/mM6fSq/TgoVOQU6d9Ij3evURTTXK/5yHFut3Rh0rsSEu6mjkwkOwjeg70rhXKUC10ylChxF5qtkbC/mfLU4Y0bQggrOZaLneNC/m0E2gfAKO+QthaCrU2YjOhg5dT2cbz6NBZMFXdfhHzZvA3ObAzVfQvR1KzRA7pYz3UPzgX3WKXKjFHC4RW9gSuCdmpFk+BS2kc4gEXaIvDzYMeKkA6Bz36z1qcaG9NS2tHt/cJNTL4rfD8ajvfa1sQeRUE1mDl5mTbcP66e3kI6eyPferGw8aQNSoq3Xf9/LMCMp3SAl1cpmlF+7zH9vMZtusKn0vrcr2H6ty82ucB9S8B8Ncemo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(376002)(396003)(346002)(39860400002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(5660300002)(52536014)(122000001)(4326008)(76116006)(110136005)(41300700001)(66946007)(66556008)(66446008)(66476007)(54906003)(64756008)(316002)(8936002)(15650500001)(55016003)(2906002)(478600001)(8676002)(71200400001)(9686003)(33656002)(83380400001)(6506007)(7696005)(53546011)(107886003)(26005)(86362001)(82960400001)(38100700002)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MFZpVFdOaWpXMzN6cnc0b3IrT0thdXAxcFk1bElDWDN1MEZRTlQ3K3FMSnZv?=
 =?utf-8?B?Rm8zTkU2d0I3VFpaMWpiWTRaVEliWUlmNDVUZWtDR0N4SmpNNmRSRHZUeG9i?=
 =?utf-8?B?N1VicUF3Mk1IL2YxK1JoWUY5ZkErS205NGltN003MXFlMUE3bm00aDJDRTda?=
 =?utf-8?B?NlVUZ3NHbW1WT1dJcjhIejIvMjJzbDkzWWlpejllVitsakNHbkJqUjlSMC9P?=
 =?utf-8?B?VzlDYWgvUDNSQm9vVk55dStSY3U4NGdISlJJQzNwTDVoYkY0S0FrZG9PRHlL?=
 =?utf-8?B?dmRaWjhCOXVyQkhsTllEV1hUQ1E2cEhTbTJnSTk3OFhiL3V0S3hTbGFkQUk2?=
 =?utf-8?B?UUZsbi9ETnN6NHJJZ1FSRnJrWGN1U21LSm52L0Jvdk04T0lMYkxPbHJhajd3?=
 =?utf-8?B?UXdyV2g1SDd4LzBjZEdCV0x0R0ZBYWNXQzdINEtwTHd0MWxWVncvYW1DWEJS?=
 =?utf-8?B?dVpwT09jUFc0UXptb0tGd1hjaVBqZ0pXS0JSaDZVRWVyaXo4L05LQStTcjJZ?=
 =?utf-8?B?YXhaZTZGRVhqY0dEeC9neUl2SVN0THozTWZDK0Y4UnNISFUvV2k0TXg1UStl?=
 =?utf-8?B?VmpETjhvVXdNSzVkdDhwYWJYMEhWaW9LRlJCQ3R5em16eHBzc1lYRDFSaFFt?=
 =?utf-8?B?MlBWa21jQVNScjM4M0NldW5DTnZFZWpOd2hDZy9QSUdPb1V4VUd0MUVmOFcx?=
 =?utf-8?B?WnpuZnV5bjhoZ203V2VwYXUveHA4aW9jT0psYXhsV3luV2twb2tvNm9nQTJL?=
 =?utf-8?B?dktoNUVja3cvYXlnaFdmeUhuOHIzR3BkL1ZiT0NHbzFUMTdEOVRUK3dvNm9E?=
 =?utf-8?B?WlhzSGlLUGRlamh5STV0ampXRE5wS0dlK2x5c3ViZEZ3YndzSUtuYmF1cFRi?=
 =?utf-8?B?RVQ3SGdmaGRQNHdQd2Z0TTRQNkJSTkpKQktzMkN0elFHWG83VVFTS3kxVUhW?=
 =?utf-8?B?ODFuYXJjeEdydHBYbTcxc2NvNUZjdEFYSm10NnZyVjBlNS9MNWluNDRzdlB0?=
 =?utf-8?B?ZzVadjRvUUVmQUlXWnNFSnpUa2pWNmhWdGhURjVSR1orVHBaVFR1elBXUHFn?=
 =?utf-8?B?bzJRaUtoaDhkQTZNUXdhMndQWEtHTFBxMFJ1R2llTVVTaHFsSU4zdTVOczFp?=
 =?utf-8?B?cGhveFZCa3RSMnhuZktDTGd5U1FkRUNrcFhTMUpjZVJWVitCem1YZEh6UFA0?=
 =?utf-8?B?SGtVNkE0cEFGa0JoRGxLVTlQc3VzNHQ5eVJPSnNCOFVacjRDU1Z4UEJQeVdh?=
 =?utf-8?B?N1krVUs5OVU4Yy9aaFVHSHU2WGtmZWFPcG53OFhJeHk0NkVMN1BvNDFneThO?=
 =?utf-8?B?cmc2STVjMERPYmt0YStPSmRweDdZRFNVaGdNQWZMZEEzYUF0SU1ycnZWcFV0?=
 =?utf-8?B?OElJT3Z3YlpydDBnY1RGWWJLeUN0cFpoWFBGcWZqMkg5VEp3Q0xuU0g1a3Y0?=
 =?utf-8?B?NDUzbUNscE5WTUFYbkNTUGF6T1RGRmdkYWR3QnFkUGJtQ0tLRS9DYm5pRVJK?=
 =?utf-8?B?bXVONmY5Q3N2QW5JV2FYcW5TSlM5c2VhbzBhL3oxMHJRN2MrRHk1VVczbDda?=
 =?utf-8?B?cE5YNTQwejZTSXY5N2Fza1VXUEpXbmNYN0lTQmE0NHpkK3VHM2pBd2g5SVRu?=
 =?utf-8?B?Mmc5NGRoLzFadGoySVhBWFYxMEtrdmxrUm0wbXVVVGVCVE9JMHJsTmhQdGU4?=
 =?utf-8?B?UkZGRWdHem9hbk1XR3RFZGFoNEQ2eno4RFg5ZDc2U295R3dNQjQvWHRqVnNR?=
 =?utf-8?B?UlFmMkVNQ3Nzb3F0QU9kdUdtb1ZaaE85amhMbXlnQnRPbGpXcmxlRGlNSVJV?=
 =?utf-8?B?Y3ZVOTErak1JRjNiZHhxeCtLa29yWVVMYU1kcWZRMVFpL1orNUJZL3dORmcx?=
 =?utf-8?B?cVVvQWVHMlFwVXVuZWNqcko1cUpHVmRTdnp3Und1VldQNWY4QWRGT1VXVU02?=
 =?utf-8?B?M2pTYTlmMkt1Um9pQ0I3M05GUVE5bzhpeVNzRDBtMm5waElsVkRpa29uQUgz?=
 =?utf-8?B?MDV2VXJzMjdjTFhPQThJSnFSSUMwRG9KTXQ0R3VHQk5oSTJGNEtvUEsvVUl4?=
 =?utf-8?B?RC9qdlpkMzZTbTFsVk5SLzZWMVNMMmdtVXBJVGpOZExMSG1yTTNHU0lvSXJi?=
 =?utf-8?Q?UHdJEb7RFdw5ELrPzF7RRDjoN?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1af3d9a-b744-4111-4b39-08dbdbb39734
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2023 14:54:18.5427 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5i4FuhO3j3QFeQCqeTOoU0szbKfrOeLQw2KyqnsOlbBsGvPU8TgWMfSIliKSuE2YufjALG5wY83r51ZQe72Nzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5546
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Clear possible sticky bits on
 PICA message bus
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Syrjala,
 Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTb3VzYSwgR3VzdGF2byA8Z3Vz
dGF2by5zb3VzYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBOb3ZlbWJlciAyLCAyMDIz
IDQ6MjMgUE0NCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogS2Fob2xhLCBNaWthIDxtaWthLmth
aG9sYUBpbnRlbC5jb20+OyBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IFN5
cmphbGEsIFZpbGxlIDx2aWxsZS5zeXJqYWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQ
QVRDSF0gZHJtL2k5MTUvbXRsOiBDbGVhciBwb3NzaWJsZSBzdGlja3kgYml0cyBvbiBQSUNBIG1l
c3NhZ2UgYnVzDQo+IA0KPiBRdW90aW5nIE1pa2EgS2Fob2xhICgyMDIzLTExLTAxIDA3OjMxOjAx
LTAzOjAwKQ0KPiA+SXQgaXMgcG9zc2libGUgdGhhdCBzdGlja3kgYml0cyBvciBlcnJvciBiaXRz
IGFyZSBsZWZ0IG9uIG1lc3NhZ2UgYnVzDQo+ID5zdGF0dXMgcmVnaXN0ZXIuIFJlYWRpbmcgYW5k
IHRoZW4gd3JpdGluZyB0aGUgdmFsdWUgYmFjayB0byBtZXNzYWdlYnVzDQo+ID5zdGF0dXMgcmVn
aXN0ZXIgY2xlYXJzIGFsbCBwb3NzaWJsZSBzdGlja3kgYml0cyBhbmQgZXJyb3JzLg0KPiA+DQo+
ID5TaWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+
LS0tDQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgfCAx
NCArKysrKysrKysrKysrKw0KPiA+IDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspDQo+
ID4NCj4gPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4
MF9waHkuYw0KPiA+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHku
Yw0KPiA+aW5kZXggYjJhZDRjNjE3MmY2Li5mNDM5ZjBjN2I0MDAgMTAwNjQ0DQo+ID4tLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+KysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPkBAIC0xOTUsNiAr
MTk1LDEzIEBAIHN0YXRpYyBpbnQgX19pbnRlbF9jeDBfcmVhZF9vbmNlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1LCBlbnVtIHBvcnQgcG9ydCwNCj4gPiAgICAgICAgICAgICAgICAgcmV0
dXJuIC1FVElNRURPVVQ7DQo+ID4gICAgICAgICB9DQo+ID4NCj4gPisgICAgICAgIC8qDQo+ID4r
ICAgICAgICAgKiB3cml0ZSBYRUxQRFBfUE9SVF9QMk1fTVNHQlVTX1NUQVRVUyByZWdpc3RlciBh
ZnRlciByZWFkIHRvIGNsZWFyDQo+ID4rICAgICAgICAgKiBhbnkgZXJyb3Igc3RpY2t5IGJpdHMg
c2V0IGZyb20gcHJldmlvdXMgdHJhbnNhY3Rpb25zDQo+ID4rICAgICAgICAgKi8NCj4gPisgICAg
ICAgIHZhbCA9IGludGVsX2RlX3JlYWQoaTkxNSwgWEVMUERQX1BPUlRfUDJNX01TR0JVU19TVEFU
VVMocG9ydCwgbGFuZSkpOw0KPiA+KyAgICAgICAgaW50ZWxfZGVfd3JpdGUoaTkxNSwgWEVMUERQ
X1BPUlRfUDJNX01TR0JVU19TVEFUVVMocG9ydCwNCj4gPisgbGFuZSksIHZhbCk7DQo+ID4rDQo+
ID4gICAgICAgICBpbnRlbF9kZV93cml0ZShpOTE1LCBYRUxQRFBfUE9SVF9NMlBfTVNHQlVTX0NU
TChwb3J0LCBsYW5lKSwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgIFhFTFBEUF9QT1JUX00y
UF9UUkFOU0FDVElPTl9QRU5ESU5HIHwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgIFhFTFBE
UF9QT1JUX00yUF9DT01NQU5EX1JFQUQgfCBAQCAtMjYyLDYNCj4gPisyNjksMTMgQEAgc3RhdGlj
IGludCBfX2ludGVsX2N4MF93cml0ZV9vbmNlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
LCBlbnVtIHBvcnQgcG9ydCwNCj4gPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FVElNRURPVVQ7
DQo+ID4gICAgICAgICB9DQo+ID4NCj4gPisgICAgICAgIC8qDQo+ID4rICAgICAgICAgKiB3cml0
ZSBYRUxQRFBfUE9SVF9QMk1fTVNHQlVTX1NUQVRVUyByZWdpc3RlciBhZnRlciByZWFkIHRvIGNs
ZWFyDQo+ID4rICAgICAgICAgKiBhbnkgZXJyb3Igc3RpY2t5IGJpdHMgc2V0IGZyb20gcHJldmlv
dXMgdHJhbnNhY3Rpb25zDQo+ID4rICAgICAgICAgKi8NCj4gPisgICAgICAgIHZhbCA9IGludGVs
X2RlX3JlYWQoaTkxNSwgWEVMUERQX1BPUlRfUDJNX01TR0JVU19TVEFUVVMocG9ydCwgbGFuZSkp
Ow0KPiA+KyAgICAgICAgaW50ZWxfZGVfd3JpdGUoaTkxNSwgWEVMUERQX1BPUlRfUDJNX01TR0JV
U19TVEFUVVMocG9ydCwNCj4gPisgbGFuZSksIHZhbCk7DQo+ID4rDQo+IA0KPiBMb29raW5nIGF0
IHRoZSBjdXJyZW50IHN0YXRlIG9mIHRoZSBjb2RlLCBsb29rcyBsaWtlIHRvIG1lIHRoYXQgd2Ug
YWxyZWFkeSBjbGVhciB0aGUgYml0cyBmcm9tIGJvdGggdGhlICJzdWNjZXNzIiBhbmQgImZhaWx1
cmUiIHBhdGhzLg0KPiBGb3IgdGhlICJzdWNjZXNzIg0KPiBwYXRocywgdGhhdCBpcyBkb25lIGJ5
IGEgZGlyZWN0IGNhbGwgdG8gaW50ZWxfY2xlYXJfcmVzcG9uc2VfcmVhZHlfZmxhZygpOyBmb3Ig
dGhlICJmYWlsdXJlIiBjYXNlLCB0aGUgY2FsbCB0bw0KPiBpbnRlbF9jbGVhcl9yZXNwb25zZV9y
ZWFkeV9mbGFnKCkgaXMgZG9uZSBhcyBwYXJ0IG9mIGludGVsX2N4MF9idXNfcmVzZXQoKS4NCj4g
DQo+IFRodXMsIGNvbnNpZGVyaW5nIHRoYXQgd2Ugc3RhcnQgdXNpbmcgdGhlIG1zZ2J1cyBmcm9t
IGEgY2xlYW4gc3RhdGUsIG1heWJlIHRoZXNlIGV4dHJhIHN0ZXBzIGFyZSBub3QgbmVjZXNzYXJ5
PyBIYXZlIHlvdSB0cmllZA0KPiBhZGRpbmcgYSBjYWxsIHRvDQo+IGludGVsX2N4MF9idXNfcmVz
ZXQoKSBhcyBwYXJ0IG9mIGludGVsX2N4MF9waHlfdHJhbnNhY3Rpb25fYmVnaW4oKT8NClRoYXQg
SSBoYXZlbid0IHRyeSB0byByZXNldCBidXMgYXQgdGhlIHN0YWdlLiBJIGNhbiBnaXZlIGl0IGEg
Z28gYW5kIGNoZWNrIHdoYXQgaGFwcGVucy4gVG8gbWUgaXQgc2VlbXMsIHRoYXQgd2UgYXJlIHNv
bWV0aW1lcyBzdHVjayBhdCB3YWl0aW5nIHRoZSBhY2sgYW5kIGV2ZW50dWFsbHkgd2UgdGltZSBv
dXQgYW5kIGJhaWwgb3V0LiBJIGhhdmUgbm8gY2x1ZSB3aHkgdGhpcyBoYXBwZW5zIGZyb20gdGlt
ZSB0byB0aW1lLiBXZSBhbHJlYWR5IHJlc2V0IHRoZSBidXMgYWZ0ZXIgZXZlcnkgcmVhZC93cml0
ZSBvcGVyYXRpb24uIEluIGFkZGl0aW9uLCBhIHNtYWxsIGRlbGF5IHNlZW0gdG8gaGVscCBhbmQg
Y2xlYXIgdGhlIHNwb3JhZGljIHJlYWQvd3JpdGUgZmFpbHVyZXMgdG8gdGhlIGJ1cy4gSG93ZXZl
ciwgdGhpcyBpcyBtb3JlIGxpa2UgYSB3b3JrYXJvdW5kIGFuZCBJJ20gbm90IHJlYWxseSBoYXBw
eSBhYm91dCB0aGlzIHNvcnQgb2YgaGFjay4NCg0KSSB3aWxsIGdpdmUgYSBnbyBmb3IgeW91ciBz
dWdnZXN0aW9uIGFuZCBjb21lIGJhY2sgb25jZSBJIGhhdmUgdGhlIHJlc3VsdHMuDQoNClRoYW5r
cyENCi1NaWthLQ0KDQo+IA0KPiBBbHNvLCBJIHRoaW5rIGl0IHdvdWxkIGJlIGdvb2QgaWYgd2Ug
dW5kZXJzdG9vZCBiZXR0ZXIgd2VyZSB0aG9zZSB1bmNsZWFyZWQgYml0cyBhcmUgY29taW5nIGZy
b20uLi4NCj4gDQo+IC0tDQo+IEd1c3Rhdm8gU291c2ENCj4gDQo+ID4gICAgICAgICBpbnRlbF9k
ZV93cml0ZShpOTE1LCBYRUxQRFBfUE9SVF9NMlBfTVNHQlVTX0NUTChwb3J0LCBsYW5lKSwNCj4g
PiAgICAgICAgICAgICAgICAgICAgICAgIFhFTFBEUF9QT1JUX00yUF9UUkFOU0FDVElPTl9QRU5E
SU5HIHwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgIChjb21taXR0ZWQgPyBYRUxQRFBfUE9S
VF9NMlBfQ09NTUFORF9XUklURV9DT01NSVRURUQgOg0KPiA+LS0NCj4gPjIuMzQuMQ0KPiA+DQo=
