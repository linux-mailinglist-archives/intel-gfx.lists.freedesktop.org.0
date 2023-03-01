Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 604976A75D0
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 22:03:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD96010E267;
	Wed,  1 Mar 2023 21:03:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DFFE10E267
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 21:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677704614; x=1709240614;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Fctmi4N+pAgLF8BmByDMTJvhNg89yYB/pp9f4hyT7jU=;
 b=VNZy114XKCNW7fKB9hJru1Lt91TCcaJJGEaVwxhfFcsYmkyzPb9pKM1t
 HF4zcOx1lRhzZtuXP4z77Ylnx3RmpHUvsJnoFKvf2qbTtvCJJp+3OTbor
 1khNXYxJb4UAS0hikNbDt8CrscXARy9gLlsdMqvYadmRC8VDahHj3rl3C
 9mqSyNmOO10GtBqMVrXdutpZifCo3DCq4bhFzlrdICA3Gxbj84kXm85YM
 9pb0zVbBdRcvKwD4rLbUtx/AYEM7KqGhL+0SLJJVPVK33Oae0ZsSuz7ic
 +xk/kpkLOutAdQ3DKRivEv+TeEbacJDZz3leV0Kfq3N7s6xbE2RaM7lAI w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="333245040"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="333245040"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 13:03:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="707145927"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="707145927"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 01 Mar 2023 13:03:33 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 1 Mar 2023 13:03:32 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 1 Mar 2023 13:03:32 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 1 Mar 2023 13:03:32 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 1 Mar 2023 13:03:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tj9QjxCIjMGn0hv6TQaly8TeTdVd47wWxgKb/jc/9psA1QfkQgHC5IwyaowR+S/pIs/7JO7FiV2y7QV3sMfyPWrnDwxFkx8hnxsfKsErlThfjDdQGyTbMJ078Dim5mrg2hLaznDJ9PpzP2dxWlKQwAjB8mRmT5Vq6d1G12e7N2s8/qUmnNezoq4ziVpQuPxeG67UWak8uUXNoH1SlifOEAcFwwQnDVzEiNJeidYVZSvY1DjnhxH7OX7DHy8bPZKuP/t7TQgaBG+wa/drIqqN9rB1ZUB5RCQM40osQxRgZuH/xD98GsqPVk/c8ozIPb7UMMspK3j3lmSzhafsy+5LmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fctmi4N+pAgLF8BmByDMTJvhNg89yYB/pp9f4hyT7jU=;
 b=bBigLHyHdEm4icLXZkhwbBkfX2IOcoCxn5I9ejQGrceep8A03vOv0Aebane39NdGV9JlEr1Ykx+sYpyLbVUz3589cPhaq1X2zmp8LJMQ8SfzAjBmT9cSO3mcE9gOG1DN5bmxJCi33wrkNEcTKSqvnAcjXHBHGxKc9cxrJNtA/Yd7xwbhgHlKpTMUkqMW0HZCVkf9kUZgkL2SkEcJeK6/yAnj5D5akd8HdWYmrgGve97HI/Wg5DtxwYM3TSO1rT/Ffdv1akNpxRJLnfn4tFGZ6crJb7MIMZF11EYDiCumcmUK2C05bhx2l8urV2vuRUOxfYUmhjlzx4LQjETVibkP2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SA2PR11MB5114.namprd11.prod.outlook.com (2603:10b6:806:114::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30; Wed, 1 Mar
 2023 21:03:25 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::37fb:4480:3ea:b4f]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::37fb:4480:3ea:b4f%8]) with mapi id 15.20.6134.030; Wed, 1 Mar 2023
 21:03:25 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 2/5] drm/i915/gt: generate per tile debugfs files
Thread-Index: AQHZTHoQlXIbuAq6L0OnXB7EHQq1OK7maTlg
Date: Wed, 1 Mar 2023 21:03:22 +0000
Message-ID: <DM4PR11MB59716AABA3C93E695E255D2087AD9@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
 <20230301201053.928709-3-radhakrishna.sripada@intel.com>
In-Reply-To: <20230301201053.928709-3-radhakrishna.sripada@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SA2PR11MB5114:EE_
x-ms-office365-filtering-correlation-id: 7f098654-35bd-4d6d-71bf-08db1a98649a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4DOCVvM8S5IAJtOoSYxdJ0pceEs9V+awEmTPtSkSDEVE1djia23kMXKik5W/m4zBuidUDd8w7tH3Z6YdztfK8x1LDPdWfvjCJRlLMbmncU21qJSRaoc92dzAYu74F9jSd7AEZ3H7W7FmOc4QKxRnt/8jcPnBib3goonLClAArQ71EC0hmCmqvFHGkq106aZFfu8bw/nNcrLDwxsK8SEXSKRR6iVbyynwMBEfFjE/+FJPV06fLuDKVa68MZPSrwGL6fv9YsxeOnLt3xwk2WzV8Pmh04/S97t4bopn81Sd8IBPaVn0GhwHN5kDorXWsvCTZJBI6tfL1+tOg9q6bUzxEG9+nebu+/8eDKzADHND7dHl/FpPDivaHbaeEjJ5ZYj8Zo4xc8DseXq2yU/c2JSv6QgEntAPrL379fk01PQy/EA/HXSb/MClhUz0xNuB/xZFmyiSMdk0I3svW3CsOAkVKI83vQ+oTJscyIVuyHKgeQu+7ATR7i/d3boJJIl1sMgEAA4n77f4QunQqB1QhcNdmL3+gVqJDpoZa5jty2xwCyXDtZiq/t1Q6BjTb9OQEsXulO3M82gYp1+9Q5tw0zEETjmoNJMyviUFPmgGuCjFRV++faTFuCrWOKHXAEGJoM1c3zoDiRO7tu9hyFayDysxJQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(396003)(346002)(366004)(136003)(39860400002)(451199018)(82960400001)(122000001)(38070700005)(38100700002)(966005)(33656002)(83380400001)(55016003)(54906003)(107886003)(9686003)(53546011)(71200400001)(2906002)(6506007)(6666004)(478600001)(7696005)(86362001)(6916009)(186003)(52536014)(5660300002)(316002)(8936002)(41300700001)(4326008)(26005)(8676002)(66476007)(66556008)(66446008)(66946007)(76116006)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OStEdnFhTFluRlkyZ1FyYW5Ob3ZpZCthbmxKdUNlS3NFaGxnVnFBOHQ2QnVo?=
 =?utf-8?B?UUlDU0xXY3VMWHMxSGh3MXRJUnBGais0ejFjam1MYUF5TURQNUpSYVhrOXdB?=
 =?utf-8?B?T0RBcVo3bldhdno3Uk56a0VoYmdEVmJPd05pdHd2L1ZvMVgrZnk3WmdVTnRx?=
 =?utf-8?B?WWlIQjZNMGE5MEZ6aXdteWtXR0VaS3dwK3BUb2NVMjE1R1p6dGlRSnYrcm1T?=
 =?utf-8?B?eXhRM0lnblM3K1RCR1RIaFZLNElTVjFQK3JiZGdPL2N5ZWIyYUJNMEQyVmlP?=
 =?utf-8?B?cVE2NHAzam0wTVJ6RWVZYkpCdjR4UEtBSDNqRHR3NHdldEdvRFJqcVpWb1dE?=
 =?utf-8?B?eVZkMFd5Y2tKcTBPbkVuTUJ2UUhrQkRYMHFPdCsrL0t4S0phMWxKRUEwT05F?=
 =?utf-8?B?czVtYmxXcU4xQktjejdpQkpSMnl3UW85Q2tDNzlmcFFnc3BJQ2VFaEhGQjRR?=
 =?utf-8?B?T2hmd092VWdHR1J5L2grUkVTb1dONE1iMDMrZXRkL2J5RExJMEZ2b1dYL1dm?=
 =?utf-8?B?TUdWRm03VGorVW4vdXphY3ZvS2duM25GamNtRGNqVUk4dFFOZEh6Tm5SWVMw?=
 =?utf-8?B?MTRQVG1mNCtNQ3QzZWVEaVlkS2R4bWR0ZUhBZXBvaU9pQkI4Uy9xSTZwNk1D?=
 =?utf-8?B?UjVCRENpL2grWnQ4ZllRU011cHhkSnRIZGtJSFZCWnlpNXFDUW11bjczSjlS?=
 =?utf-8?B?S3dKT2pLaFF1cDFKRzA3cU1pdUlmQjJuS3ZZcDVuSE1YaFNIZWNTbnYvYjd1?=
 =?utf-8?B?ZTVtSlJkVlNRZ2pwZ1VXM1VBTTBRMytNY08zaTJ4a2tzbnFvTkVBNWt2eE5U?=
 =?utf-8?B?UThYMEN6YkxDVWVZaDNydGxNL1NPTUt6NUszVDJoeTBMM0tTUGpzNUhhakhp?=
 =?utf-8?B?aXVyZSt0YUJVejR5bHdiSTZaa0FsM1Njd0hUaFBETEk2OEpIb0lVakpRT2Z5?=
 =?utf-8?B?cnh4N3RYKy94QUtiV2JPVEpTU2N3dVFPM21vK2pMVno1SWtJSE9YaUNSY2Zt?=
 =?utf-8?B?N29HYklzYU01TUI5cEZCSmFvbC9JbEdqK3QzNnNZWDJyM1ZTZnNuQXJnY3Zv?=
 =?utf-8?B?ZUZEMXRxRlhzOVFUdUZ0YW9NZlJaR1huYmU4L1NZRm1LZDBhUjRRWW4yay9Y?=
 =?utf-8?B?Q2tra091ZkpJVmNKMEtUOTFPQ1pLZ3FJU2FFdmxkYzkvK240ajd6Y3FzcDlM?=
 =?utf-8?B?aVhQamR3bTF2V2FoeGpBOHJubUJGYm9ubXBZZjZEQVBwMXVBUURDOERRU1hl?=
 =?utf-8?B?Y09XaStIdTFCT1liL1l0OThVc3RrSDNCL1M1UHZ3VTlocmw4UFk3SmVXZVhM?=
 =?utf-8?B?YVBmWkd4RzF1eUNSMHBYcWtLTHFlRkNrbWtIWnVpZ2xCSkNrdjM1VGg2QlRE?=
 =?utf-8?B?UnE0Q0dMYm9Dc3htOHFlMk1iQnlRV3BNWllaakkyKzJQaXhxNE1VSkcwSmpv?=
 =?utf-8?B?K0orY3NRRXE1c1VISXh6YkJrS3EwR2hIdk9aUjNjSDFLZlJEWnFoMFBYbkFk?=
 =?utf-8?B?UFNsVlM3K00zUURTSXBnQzlFREFLR1dqNUtHNWJKWFNxSWFlZzE2akllZVE2?=
 =?utf-8?B?S1VyeDY0UW9ydUtWMW8wMmhMVDZUeWRDd2VYS1VMNjBLM1FwU3V0ZkozSUEz?=
 =?utf-8?B?VFFDSURiUDYzOHNOVWpwbCtIYzQyVEExUjF2MTZRR3loSTFUOEROTkFKL2ZP?=
 =?utf-8?B?S3JTZjRDQmlIeG9MaFB3bGdIOXFsSGJkemdrRmlQanJ4c2RnbDY2Z00zc2Vp?=
 =?utf-8?B?RGttOUtrUEJ5VlJkNFJLM21ONFpRdktBMXZuYXQzVFUvc1QxS25qc21OMHlm?=
 =?utf-8?B?VG9seGQ5dFJJWUZxSGxaWGdKQnlkaCtZd1dtVTlKSUFHSk1MV28rT3VkTkJ3?=
 =?utf-8?B?ZUQzT2F0SlZ4OGsySWJHeHA2THdkNjlKTGNIK2JQZlNxeDZtMHYreTBYdG9K?=
 =?utf-8?B?c0s4RlY0d09KTWI1N1FqQlk3Um5vYUFHczhKc0gzOEpMYTZYbmJJU1F0bW9P?=
 =?utf-8?B?elE1NC9CdWw3SkpIZEhONEhHblo3SzZxalJpaDJTaHdoZWJodS8wMEsyR0k3?=
 =?utf-8?B?M0ZoYjM4M0MwOVdGTjJWL3l3TWE3U1puSTg1VjJCaUc5b3ZwZU1lS282eWZ4?=
 =?utf-8?B?YXY0VXdvZ202ajd3SURMSEtsOVVGVTl3a0R3Wm81aENoaDB5dUgyQ08zVzFJ?=
 =?utf-8?B?WHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f098654-35bd-4d6d-71bf-08db1a98649a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2023 21:03:22.7782 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ljQ/GNvNCZBZgxpFSFJm6cUF6qqBRcqVL2R3IICc0IWfQYL6d8+OFDt13JVTDrChbhnucz+mfYWNv869QwVdCT6B8/dW4U1fgcJxyXT1Bc0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5114
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/5] drm/i915/gt: generate per tile
 debugfs files
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
Cc: "Shyti, Andi" <andi.shyti@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBjYW4gYmUgaWdub3JlZC4gQXMgdGhlIG9yaWdpbmFsIEF1dGhvciBzdWJtaXR0
ZWQgdGhlIHNlcmllcyBoZXJlDQpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2Vy
aWVzLzExNDUxMC8NCg0KLSBSYWRoYWtyaXNobmEoUkspIFNyaXBhZGENCg0KPiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTcmlwYWRhLCBSYWRoYWtyaXNobmEgPHJhZGhha3Jp
c2huYS5zcmlwYWRhQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBNYXJjaCAxLCAyMDIz
IDEyOjExIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBT
aHl0aSwgQW5kaSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+OyBVcnN1bGluLCBUdnJ0a28NCj4gPHR2
cnRrby51cnN1bGluQGludGVsLmNvbT47IFNyaXBhZGEsIFJhZGhha3Jpc2huYQ0KPiA8cmFkaGFr
cmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMi81XSBkcm0v
aTkxNS9ndDogZ2VuZXJhdGUgcGVyIHRpbGUgZGVidWdmcyBmaWxlcw0KPiANCj4gRnJvbTogQW5k
aSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+DQo+IA0KPiBJbiB0aGUgdmlldyBvZiBtdWx0
aS1ndCB3ZSB3YW50IGluZGVwZW5kZW50IHBlciBndCBkZWJ1ZyBmaWxlcy4NCj4gDQo+IEluIGRl
YnVnZnMgY3JlYXRlIGd0MC8gZ3QxLyAuLi4gZ3ROLyBmb3IgdGlsZSByZWxhdGVkIGZpbGVzLiBJ
biA0DQo+IHRpbGVzLCB0aGUgZGVidWdmcyB3b3VsZCBiZSBzdHJ1Y3R1cmVkIGFzIGZvbGxvd3M6
DQo+IA0KPiAvc3lzL2tlcm5lbC9kZWJ1Zy9kcmkNCj4gICAgICAgICAgICAgICAgICAg4pSU4pSA
4pSAIDANCj4gICAgICAgICAgICAgICAgICAgIMKgwqAg4pSc4pSA4pSAIGd0MA0KPiAgICAgICAg
ICAgICAgICAgICAgwqDCoCDilILCoMKgIOKUnOKUgOKUgCBkcnBjDQo+ICAgICAgICAgICAgICAg
ICAgICDCoMKgIOKUgsKgwqAg4pSc4pSA4pSAIGVuZ2luZXMNCj4gICAgICAgICAgICAgICAgICAg
IMKgwqAg4pSCwqDCoCDilJzilIDilIAgZm9yY2V3YWtlDQo+ICAgICAgICAgICAgICAgICAgICDC
oMKgIOKUgsKgwqAg4pSc4pSA4pSAIGZyZXF1ZW5jeQ0KPiAgICAgICAgICAgICAgICAgICAgwqDC
oCDilILCoMKgIOKUlOKUgOKUgCBycHNfYm9vc3QNCj4gICAgICAgICAgICAgICAgICAgIMKgwqAg
4pSc4pSA4pSAIGd0MQ0KPiAgICAgICAgICAgICAgICAgICAgwqDCoCDilILCoMKgIOKUnOKUgOKU
gCBkcnBjDQo+ICAgICAgICAgICAgICAgICAgICDCoMKgIOKUgsKgwqAg4pSc4pSA4pSAIGVuZ2lu
ZXMNCj4gICAgICAgICAgICAgICAgICAgIMKgwqAg4pSCwqDCoCDilJzilIDilIAgZm9yY2V3YWtl
DQo+ICAgICAgICAgICAgICAgICAgICDCoMKgIOKUgsKgwqAg4pSc4pSA4pSAIGZyZXF1ZW5jeQ0K
PiAgICAgICAgICAgICAgICAgICAgwqDCoCDilILCoMKgIOKUlOKUgOKUgCBycHNfYm9vc3QNCj4g
ICAgICAgICAgICAgICAgICAgIMKgwqAg4pSc4pSA4pSAIGd0Mg0KPiAgICAgICAgICAgICAgICAg
ICAgwqDCoCDilILCoMKgIOKUnOKUgOKUgCBkcnBjDQo+ICAgICAgICAgICAgICAgICAgICDCoMKg
IOKUgsKgwqAg4pSc4pSA4pSAIGVuZ2luZXMNCj4gICAgICAgICAgICAgICAgICAgIMKgwqAg4pSC
wqDCoCDilJzilIDilIAgZm9yY2V3YWtlDQo+ICAgICAgICAgICAgICAgICAgICDCoMKgIOKUgsKg
wqAg4pSc4pSA4pSAIGZyZXF1ZW5jeQ0KPiAgICAgICAgICAgICAgICAgICAgwqDCoCDilILCoMKg
IOKUlOKUgOKUgCBycHNfYm9vc3QNCj4gICAgICAgICAgICAgICAgICAgIMKgwqAg4pSU4pSALSBn
dDMNCj4gICAgICAgICAgICAgICAgICAgIMKgwqAgOsKgwqAg4pSc4pSA4pSAIGRycGMNCj4gICAg
ICAgICAgICAgICAgICAgIMKgwqAgOsKgwqAg4pSc4pSA4pSAIGVuZ2luZXMNCj4gICAgICAgICAg
ICAgICAgICAgIMKgwqAgOsKgwqAg4pSc4pSA4pSAIGZvcmNld2FrZQ0KPiAgICAgICAgICAgICAg
ICAgICAgwqDCoCAgwqDCoCDilJzilIDilIAgZnJlcXVlbmN5DQo+ICAgICAgICAgICAgICAgICAg
ICDCoMKgICDCoMKgIOKUlOKUgOKUgCBycHNfYm9vc3QNCj4gDQo+IHYyOiBGaXggdGhlIG1pc3Nl
ZCBhc3NpZ25tZW50IGRiZ2ZzX25vZGUNCj4gDQo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNo
eXRpQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJh
ZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndF9kZWJ1Z2ZzLmMgICAgfCA0ICsrKy0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5oICAgICAgICB8IDIgKysNCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2d1Y19sb2cuYyAgICB8IDUgKysrKy0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2RlYnVnZnMuYyB8IDIgKysNCj4gIDQgZmlsZXMgY2hh
bmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9kZWJ1Z2ZzLmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9kZWJ1Z2ZzLmMNCj4gaW5kZXggNWZjMmRmMDFhYTBk
Li40ZGMyM2I4ZDNhYTIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0X2RlYnVnZnMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dF9kZWJ1Z2ZzLmMNCj4gQEAgLTgzLDExICs4MywxMyBAQCBzdGF0aWMgdm9pZCBndF9kZWJ1Z2Zz
X3JlZ2lzdGVyKHN0cnVjdCBpbnRlbF9ndCAqZ3QsDQo+IHN0cnVjdCBkZW50cnkgKnJvb3QpDQo+
ICB2b2lkIGludGVsX2d0X2RlYnVnZnNfcmVnaXN0ZXIoc3RydWN0IGludGVsX2d0ICpndCkNCj4g
IHsNCj4gIAlzdHJ1Y3QgZGVudHJ5ICpyb290Ow0KPiArCWNoYXIgZ3RuYW1lWzRdOw0KPiANCj4g
IAlpZiAoIWd0LT5pOTE1LT5kcm0ucHJpbWFyeS0+ZGVidWdmc19yb290KQ0KPiAgCQlyZXR1cm47
DQo+IA0KPiAtCXJvb3QgPSBkZWJ1Z2ZzX2NyZWF0ZV9kaXIoImd0IiwgZ3QtPmk5MTUtPmRybS5w
cmltYXJ5LT5kZWJ1Z2ZzX3Jvb3QpOw0KPiArCXNucHJpbnRmKGd0bmFtZSwgc2l6ZW9mKGd0bmFt
ZSksICJndCV1IiwgZ3QtPmluZm8uaWQpOw0KPiArCXJvb3QgPSBkZWJ1Z2ZzX2NyZWF0ZV9kaXIo
Z3RuYW1lLCBndC0+aTkxNS0+ZHJtLnByaW1hcnktDQo+ID5kZWJ1Z2ZzX3Jvb3QpOw0KPiAgCWlm
IChJU19FUlIocm9vdCkpDQo+ICAJCXJldHVybjsNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Yy5oDQo+IGluZGV4IGJiNGRmZTcwN2E3ZC4uZTQ2YWFjMWE0MWU2IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaA0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaA0KPiBAQCAtNDIsNiAr
NDIsOCBAQCBzdHJ1Y3QgaW50ZWxfZ3VjIHsNCj4gIAkvKiogQGNhcHR1cmU6IHRoZSBlcnJvci1z
dGF0ZS1jYXB0dXJlIG1vZHVsZSdzIGRhdGEgYW5kIG9iamVjdHMgKi8NCj4gIAlzdHJ1Y3QgaW50
ZWxfZ3VjX3N0YXRlX2NhcHR1cmUgKmNhcHR1cmU7DQo+IA0KPiArCXN0cnVjdCBkZW50cnkgKmRi
Z2ZzX25vZGU7DQo+ICsNCj4gIAkvKiogQHNjaGVkX2VuZ2luZTogR2xvYmFsIGVuZ2luZSB1c2Vk
IHRvIHN1Ym1pdCByZXF1ZXN0cyB0byBHdUMgKi8NCj4gIAlzdHJ1Y3QgaTkxNV9zY2hlZF9lbmdp
bmUgKnNjaGVkX2VuZ2luZTsNCj4gIAkvKioNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2d1Y19sb2cuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Y19sb2cuYw0KPiBpbmRleCAxOTVkYjhjOWQ0MjAuLjU1YmM4YjU1ZmJjMCAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZy5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19sb2cuYw0KPiBA
QCAtNTQyLDggKzU0MiwxMSBAQCBzdGF0aWMgaW50IGd1Y19sb2dfcmVsYXlfY3JlYXRlKHN0cnVj
dCBpbnRlbF9ndWNfbG9nDQo+ICpsb2cpDQo+ICAJICovDQo+ICAJbl9zdWJidWZzID0gODsNCj4g
DQo+ICsJaWYgKCFndWMtPmRiZ2ZzX25vZGUpDQo+ICsJCXJldHVybiAtRU5PRU5UOw0KPiArDQo+
ICAJZ3VjX2xvZ19yZWxheV9jaGFuID0gcmVsYXlfb3BlbigiZ3VjX2xvZyIsDQo+IC0JCQkJCWk5
MTUtPmRybS5wcmltYXJ5LT5kZWJ1Z2ZzX3Jvb3QsDQo+ICsJCQkJCWd1Yy0+ZGJnZnNfbm9kZSwN
Cj4gIAkJCQkJc3ViYnVmX3NpemUsIG5fc3ViYnVmcywNCj4gIAkJCQkJJnJlbGF5X2NhbGxiYWNr
cywgaTkxNSk7DQo+ICAJaWYgKCFndWNfbG9nX3JlbGF5X2NoYW4pIHsNCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2RlYnVnZnMuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2RlYnVnZnMuYw0KPiBpbmRleCAyODRkNmZi
YzJkMDguLjJmOTNjYzRlNDA4YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfdWNfZGVidWdmcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX3VjX2RlYnVnZnMuYw0KPiBAQCAtNTQsNiArNTQsOCBAQCB2b2lkIGludGVsX3Vj
X2RlYnVnZnNfcmVnaXN0ZXIoc3RydWN0IGludGVsX3VjICp1Yywgc3RydWN0DQo+IGRlbnRyeSAq
Z3Rfcm9vdCkNCj4gIAlpZiAoSVNfRVJSKHJvb3QpKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiArCXVj
LT5ndWMuZGJnZnNfbm9kZSA9IHJvb3Q7DQo+ICsNCj4gIAlpbnRlbF9ndF9kZWJ1Z2ZzX3JlZ2lz
dGVyX2ZpbGVzKHJvb3QsIGZpbGVzLCBBUlJBWV9TSVpFKGZpbGVzKSwgdWMpOw0KPiANCj4gIAlp
bnRlbF9ndWNfZGVidWdmc19yZWdpc3RlcigmdWMtPmd1Yywgcm9vdCk7DQo+IC0tDQo+IDIuMzQu
MQ0KDQo=
