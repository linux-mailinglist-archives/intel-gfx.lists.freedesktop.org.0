Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 685E866233C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 11:31:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD9B510E3CD;
	Mon,  9 Jan 2023 10:31:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 260BA10E3CF
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 10:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673260272; x=1704796272;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yoOrv30lXxaYC1Ahg4iO/aP3267qYP/BCA33cXgcFpU=;
 b=YJRjJJbS3BVe/3OVCrBe9gDuhja9zBkisT/q7ipyZyjtGIxM5BgstkPU
 DRioN360QNZPSY7vmt4qJhVNzJ9ZHzDTiHA6f/Ar0PC0S+ArQSq7QlWa9
 9qX/zsigtlY+LveYEI7JTX42wDHeOmxVq7eXq5ZBWwDs3b91GxQuw7yP4
 RTgv/s4ntno4n4oHrdPyUe6bowfz36in8U3WiwAMg0w/wkMqQdGfC58ah
 KqIwgQxoS0qbRlkPgYTIh6E8J7PuwWvajZx5UwVMdEMZttBexK5ga8V90
 m8cB2WTFtqVLyBNBnk2a436HToGzBm+SLreUjsIgRoEjVovD54aKyL8N+ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="310635871"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="310635871"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 02:31:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="656637344"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="656637344"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 09 Jan 2023 02:31:08 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 9 Jan 2023 02:31:06 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 9 Jan 2023 02:31:06 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 9 Jan 2023 02:31:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mqUq2Qc7tZLRuZmffkxWdxq7cDrZKkDwQr6gKnCVDqquMoYBZ7gXR3z3Oc8iTZvquyTZEXwZLeHhFldwwrbYgOODsRuZiKZAHSbNTBpRGxfwV5kApEYTC85+8n0fQN8242DRvYrV8sp5OxZd64XjpowNQUAR7StN0qIAjf3SNPqsW2NfLf9nIjLkbeXZGZOdIJLVDzz5ISq5/qQDx/v2f8n3+6uGjNPWj0dOWPNeMqvar2aeNg8LvKMayCSLkmu1ubhbfYkz4a/QniHxGkpdmm6mRBRVB+IZPNcIgt4Po7TWEtbJVwMilt9Nx5iqzC4lNA3rD6+U6Msmr0T9fvRMUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yoOrv30lXxaYC1Ahg4iO/aP3267qYP/BCA33cXgcFpU=;
 b=faF06qbd804AYHNeUixlgMOhOUe2sHUY9632moMmig3cj4I1n9KwVJUaFB9dyPI9lVKuBqw53doXssnw/wtZ2FgM/7g2GhRFrYbtj/9fLNYb9mJytlbj1caJnS95U559gDsUizI4Om5VOIdLEaLNgeou3mRUcNQcUi1YdUOWgZMJraW6JYHL1Y9fUzUOZvO9wMClO/2FNTxl27zNX88TPDVo8cyUhHPWx3c+N7yn4RrzSvlWO7iVU4LWUUlp41G48WwbhjHqadvwMgy0IsNx/gtPPuTNWlMq8MYNreqSUDikIUFjPzXHaUf8qR8ifxEEo5kMfAmxS3SnI87HhVl7GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DM6PR11MB4594.namprd11.prod.outlook.com (2603:10b6:5:2a0::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Mon, 9 Jan
 2023 10:31:03 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::c6c8:7229:f65a:14d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::c6c8:7229:f65a:14d%7]) with mapi id 15.20.5986.018; Mon, 9 Jan 2023
 10:31:03 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 04/21] drm/i915/mtl: Add Support for C10 PHY message
 bus and pll programming
Thread-Index: AQHZIQWZFHFhvjHkhEmrNDkZTgDju66V3ViAgAALNoA=
Date: Mon, 9 Jan 2023 10:31:03 +0000
Message-ID: <MW4PR11MB70546947FA35B4D4F1CE5AC3EFFE9@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230105125446.960504-1-mika.kahola@intel.com>
 <20230105125446.960504-5-mika.kahola@intel.com> <87y1qc11hm.fsf@intel.com>
In-Reply-To: <87y1qc11hm.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DM6PR11MB4594:EE_
x-ms-office365-filtering-correlation-id: 818d2fbf-2cf7-426d-acc2-08daf22c9bdb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Dtndf/oQ2Qmqvsa1x6lF2mp1NJns5N3hvtCDNu6ZL4Oh0DCnHR1M6odj5JPlMh+e6pqrwHuVBggSATumJmB8eIL7KqUnkwKXxVe8RYb41eBqhYpVM0NmEQciDq5lD9gKDe+RXQXwxGV4LNm2TnNXyDGJ6OEKno812K8k5GvdC9qtvxgByt9vVcRGz50zy5+Y0zZU/pll7eg9KEz95d5DvsiYlGoDfN+HxQwPSF88Vs4K224UQbzGq1PFvY6OpFbnoxBK5/3/qDUpQmIC1PAOj0WT3Q9Vc+omTSVCHVTNIgSEusuc5HQzXVF9ALHZjg7/Lg8J4bA/in7jKfbQxVm/NKYvVqytoOZ6RkGedYUnZbojk5IPnsRx7PUHfqatGTcuoy/hVkuA/wpabqblzekfta2RcL4mJbMuWkeZZA/Yw1ZCIpQZKKLlQU6gpwwfSMdDwihr2+ky3Fe6Ddi/ueZ28XEInjjoRNLCgAElvH81kr5uRF/9nfetiCZZIVXrS5ni0IjxOKmc4uvnqqkJP/ttWCJyrBrTVuelldyaU6lOCL+tt8Wie1b9Dw3BB1HJlgIfMWWfm8fDArXfrRy8Nadh8jayV9Fci2i8ltqUdk+iakWhUwX+730L4rT9pIQuek6GVQH321B/zWBlXjPBzP0GwdQz5qCp+67gSbp/cWUIrJk5YNZNFwEyRDG+j7aFpN6fnr9VVmLNK/i/g48N/BfuUA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(396003)(136003)(366004)(346002)(451199015)(83380400001)(122000001)(82960400001)(86362001)(2906002)(41300700001)(52536014)(8936002)(4744005)(5660300002)(15650500001)(38100700002)(55016003)(186003)(53546011)(107886003)(6506007)(9686003)(478600001)(66446008)(26005)(8676002)(64756008)(66476007)(4326008)(316002)(7696005)(66946007)(71200400001)(54906003)(110136005)(76116006)(38070700005)(66556008)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aWN6RUxRMjN3bktvL3A3eE4xZWJ0NDRCa0Z2UGJybVl6SEtLa0k4SzY3aXpk?=
 =?utf-8?B?RkR2OGRZbXArRnVhRWdjditSeEpXcFY0ZmRFQTlkVU9ZV080VGNObWt2Y0FK?=
 =?utf-8?B?VzMrUWFoOXNIa3dqOStNTlNnR2E0Qis3Yi84Qnl6SzRLMVM5Q3M2SHdxMFlY?=
 =?utf-8?B?SjB1ZXBjSVpSb1Q3STlLOVQxWXA4K0NJRTZscjA2V0lDOThlbEFNTVY2OFFK?=
 =?utf-8?B?eTJzWlFRRkQzZzBsYmw4MiswSUhOTE9kOWhUdVp1djZhaFYwMm5FNGhSckll?=
 =?utf-8?B?ekZobHB2Nk5lYldNY0p4c1hYeU5EaHJtbzJEZ3E1eWwzNzBVK1UybEd1RDdT?=
 =?utf-8?B?Z3AwQXdLRmxZREdHYnNhSkorMkt3bWp6N2pwZmFRTXhBVGxOcFJ1T1M4aFpv?=
 =?utf-8?B?UEZsWlZjRGNnRU05S2FlMkVWaDdUQkhKdlcrc3l0MVdiWUVHa0R0cVBnWmZi?=
 =?utf-8?B?U0NXR2NDbWFxTWlmMWs5aUhWM2JlRWlscjhJK1pXV3pWMWltMThIT3hLalBU?=
 =?utf-8?B?SUl2VmxWYzQ3d240Y0w4RU5vOUc2SVltT042ZGZLazcybk1CVVl6RDZvVFlB?=
 =?utf-8?B?dWVLTG9kQ3dFWk9KMExTdm9uS0RNRXkzdjVTMVpHaGpObmpPSTFvclpvTUNF?=
 =?utf-8?B?TkFLWkVweUFmUmNOUDl1UVhyK0VWZi9qb1pGRGppby9mUG84c0pLY0I3OVZs?=
 =?utf-8?B?Q05zZEZFZThubE5lNmo3aE8zdmNZaWszYm5Ha2ljS3Z4OGpNb3BXM2MrV0tY?=
 =?utf-8?B?UGl2NG0zUHUxa2JiaitnbXE0cWVodCsxNEdqazVnTTI4SnBVVUVOTEhXN0FD?=
 =?utf-8?B?U1hDUU94Qm1oc2dQTFFuUVc1L0NEOHNMQUdzUzhReDRjdE9nbW0zb2J6MWRD?=
 =?utf-8?B?R0xtaWxHdlkvTGNwdDlnNUI2RFhYYjBYYUh0dy9talI0RnZuOTl6RVdSVFg5?=
 =?utf-8?B?S3d1L1dPdHdpa2crdkRwQjd2dzExVVJFTk5wOHZ4Vkszc1BwblN6RFJObm9G?=
 =?utf-8?B?MnZWTCtuaXZsU0t2VUhwQXl4OWY0K3IvK0hCblhaS3FsUnFmemYrQXFqMmcr?=
 =?utf-8?B?c0pmL1poNW9pYkYzbTJNcFhBSUJvbGFNWHlMVjFoN0lvQStXY3FNZGE5ZUYx?=
 =?utf-8?B?TXFvcmZnVm56enN0L2VFMGFLSGhhSmlvZnE3ZVM5bGplYlJHVEttdjNzZlBp?=
 =?utf-8?B?bnRKSHhXS25SL0VYZE16RnVzeE90NmQ1dnBTYzQ3dGlzbVRWdDN6d0ZlTVpY?=
 =?utf-8?B?V3Z2S0FLS0lvQXNhd0hyRVlpc2x6Mldyb2ozdXdRb2hvWUZCcGFldjdXRGNC?=
 =?utf-8?B?Q1RsV3pzaHM2NTFuSi9jSXcxVVhqR3JYcmtvMERTV3ZBUk5yNGtGdlhnaVJI?=
 =?utf-8?B?ME9NbW11Q3JiODBOMTRLSnMzMmxQV3ZKTVF1UzQraVVoaXUyUkRWdFg2S1NR?=
 =?utf-8?B?RDF1TnI0U0VwUGRqN2dVMkZCZjJ2U2JRU0x0QzNWT21JN0tZcVRrVGZtSVhC?=
 =?utf-8?B?Umk5K2N0WjhyVDI5M09OYlNUTVdYNHVJWGN2R2hLeE9pWXlBV0lSanFQaFhJ?=
 =?utf-8?B?ZUpzODd4cjhFeHUwSjduNjBVQ0hrVkU3OVN5UlRENllDVXlobm1STHl4Rmpz?=
 =?utf-8?B?MkZMaGRXN3BZWmxBSVpuV3g0UVdNWkY2a2tLN0VkT3lYbE9lcjlnRjJBNUxr?=
 =?utf-8?B?SStSQ3NrRjRWMjJtWGVzQi9UUmNXeGpPUEd5Ylc0RDlKOEtBTG1VOERJWXFk?=
 =?utf-8?B?OXB4a3R2YVA2N1hZM01aUEJPN2kyLzVzOUppbTBIMnhCQm91aHIwNlRvQ3ZC?=
 =?utf-8?B?OXYrVDBGejNmcTZiMlVpLzMrekkwSXh4RXh6cVMySzQrL3l6TEtQYjF1UDFu?=
 =?utf-8?B?Uk9SS1dra1FwaVgzejJuZGpGQW5GeDN6UVRjQWhQNUlrb3NvN2hqaWg3ZTUr?=
 =?utf-8?B?eHBVVXU3aGlSaUx6MXcwczVmWHVudTliWFdCb3cwaTJQMzRvcTViMGViWUQ5?=
 =?utf-8?B?akhKcGErMmJwNE9LSG9ORHhjcllNMUlvN0JnamZ4OEw2M0JWQTZjZHVjTU5X?=
 =?utf-8?B?cFlOaVA5anN0bFdFWmV5TjdBMnd1UWdJNndXS3RYSldMR0FlRFhWNjlRT3Ez?=
 =?utf-8?Q?orTeQhbnV/Uaxb11CD5l0uOtU?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 818d2fbf-2cf7-426d-acc2-08daf22c9bdb
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2023 10:31:03.3068 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZGs6p6xe9O6KPanFUNrknuk467uPUDNs1DCyMMJCYhHsB+WtQRu3BBEtsfT/in45LlhPMPQR8Ir50NK8SNUXoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4594
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 04/21] drm/i915/mtl: Add Support for C10
 PHY message bus and pll programming
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOaWt1bGEsIEphbmkgPGphbmku
bmlrdWxhQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBKYW51YXJ5IDksIDIwMjMgMTE6NTAg
QU0NCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogRGVhaywgSW1yZSA8aW1yZS5kZWFrQGludGVs
LmNvbT47IFNyaXBhZGEsIFJhZGhha3Jpc2huYQ0KPiA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50
ZWwuY29tPjsgS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+Ow0KPiBTaGFua2Fy
LCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MiAw
NC8yMV0gZHJtL2k5MTUvbXRsOiBBZGQgU3VwcG9ydCBmb3IgQzEwIFBIWSBtZXNzYWdlDQo+IGJ1
cyBhbmQgcGxsIHByb2dyYW1taW5nDQo+IA0KPiBPbiBUaHUsIDA1IEphbiAyMDIzLCBNaWthIEth
aG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPiB3cm90ZToNCj4gPiArc3RhdGljIGludCBpbnRl
bF9jeDBfd2FpdF9mb3JfYWNrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBlbnVtDQo+
ID4gK3BvcnQgcG9ydCwgaW50IGxhbmUsIHUzMiAqdmFsKSB7DQo+ID4gKwllbnVtIHBoeSBwaHkg
PSBpbnRlbF9wb3J0X3RvX3BoeShpOTE1LCBwb3J0KTsNCj4gPiArDQo+ID4gKwlpZiAoX19pbnRl
bF93YWl0X2Zvcl9yZWdpc3RlcigmaTkxNS0+dW5jb3JlLA0KPiANCj4gVGhlcmUncyBub3cgYW4g
X19pbnRlbF9kZV8gdmFyaWFudCBvZiB0aGlzIHRoYXQgc2hvdWxkIGJlIHVzZWQgd2l0aGluIGRp
c3BsYXkvLg0KDQpBaCwgb2suIEkgd2lsbCBjaGVjayB0aGF0IG9uZSBvdXQgYW5kIHN3aXRjaCB0
byB1c2UgdGhhdC4gVGhhbmtzIQ0KDQotTWlrYS0NCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4g
DQo+IC0tDQo+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIN
Cg==
