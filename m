Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E216C2D3A29
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 06:10:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A35016E0EC;
	Wed,  9 Dec 2020 05:10:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 484826E0EC
 for <Intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 05:10:12 +0000 (UTC)
IronPort-SDR: +SC8VByAi0CopdPAEJNsxytqnHNz5R+OUwKWWI7ci8OZ8MDSdBQRsiThhJqOFP4h5PeVVm5h6Y
 tcWLQFTDGvgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="153257220"
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="153257220"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 21:10:11 -0800
IronPort-SDR: 7n/9HSHI4DitUk5kwwiQVt/0a7p8oJPRZwEWuSdWPkt1mhNmlxCFZ2gTaedp7mjKN8ZCos1bsH
 kXahcBgOqiIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; d="scan'208";a="375411015"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga007.jf.intel.com with ESMTP; 08 Dec 2020 21:10:11 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Dec 2020 21:10:11 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Dec 2020 21:10:10 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 8 Dec 2020 21:10:10 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 8 Dec 2020 21:10:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UEHclNJuQa990cI0SSNVETyrPueN93x9Ki+t1r9vSdyBkrUlbUDHISKF8wRvnpv/ssBo7m+dWTc1j++sBKJZ0jjuV57jLsQkLS6nIFwI6ulFgVFK1ymWt0Rvlm7asbw9Wx8MmR4q5XIisPQvQJ4LQYfYWp5XCNLfXWPC4Uq59Y4ZYDFoBUxF6po5BJjL9DPtpEN6r6dBCUBgUAb59dZVVFJtbU4aGqU3u+4K6er00mbWYIIJSXqNawVAYhPkM7e6yp1GJryE0BnlVu2tXG1Ng6w6tSRbmXirodbM6X7OWqDrW8lvKw5ExL/gIxWEdQNOzutNkxPStuORr1M2X0rmvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a2kvACiw5xQS1kROiKs4MJWijBtMj2R1Jtb8Y1euoAU=;
 b=McKVAtpwSk90VRVUgjuIm/nm/yRTsHMfGzWKhBp12WGGG/0RGW6Hdnd7bkiwphm0UCBs9p3VpvHajPstBIZAF+pVSYMZddjYS/Rz8F55jI9FK6mcvnSoIn2TZUrVegNF8+gxPkuUMvx2ngvSTh5cO0lXnFdK2rfs+BSrt1WOtUogBvCXrJysM4+/Xd5Tw47Dw97JGEmnDP7uJrgk9Oi9KKf2tSekHYY3f62IXq5QnCo0BarlEcHaBqCVXFto6RzIew/L2sW2OmzicJxfCwGmEweTIcsVb/eYL8SrirQVQAjdpAW7qP152qI6a+rZxme9GunClKusy4bcG3W15cyt0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a2kvACiw5xQS1kROiKs4MJWijBtMj2R1Jtb8Y1euoAU=;
 b=m6Dvx+NCCurX+QbLx/tY5zkfdu4r+eYwyPUpakng6TNcoQGYEaUWwu4zCPKiwp+eQnp7LJKJLr7tyUYBjSDBlZjQB5+kXERiP58JMkVZkQLUo5hE05J9QVlI21jSj0moohsIwIMjXBqER69yRi6rCq3DKislMWqeoLezCC8A2qA=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB4265.namprd11.prod.outlook.com (2603:10b6:5:1de::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Wed, 9 Dec
 2020 05:10:09 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::78db:6406:7820:1071%8]) with mapi id 15.20.3632.018; Wed, 9 Dec 2020
 05:10:09 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v1 07/16] drm/i915/pxp: Implement funcs to
 create the TEE channel
Thread-Index: AQHWzI/p67qVnTzR4U+t625TnbPrfanuOcxQ
Date: Wed, 9 Dec 2020 05:10:09 +0000
Message-ID: <DM6PR11MB4531C67F9BCA0FB4F3AC59ECD9CC0@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
 <20201207002134.13731-8-sean.z.huang@intel.com>
 <160734214290.9322.10418886468519670642@jlahtine-mobl.ger.corp.intel.com>
In-Reply-To: <160734214290.9322.10418886468519670642@jlahtine-mobl.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.220.16.43]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1246c0e0-b79c-4489-7988-08d89c00b340
x-ms-traffictypediagnostic: DM6PR11MB4265:
x-microsoft-antispam-prvs: <DM6PR11MB426535F813EB33912CA2523CD9CC0@DM6PR11MB4265.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jMC3ZTSDIfd406vYBAEQNNEoXnENqozRA7wtkEbhPU+w6jufFBnFbzDG4r+EkCVsRwDNQnK0fVnnnn1PIi6xin0ghSsy5GuWBVBqnD4pepnouFnplZ3LO8lazZG2mCQDZri3MnDvRTSvIwsB6fvIBgwcZfCH4+/dFTP2TF/ym3wBDFA4KAHEQYWmjTh+sResuL0dkewDi+kUxuXWk2CD0DK1bzVkURcL2hgLni4WoD7ArEmz3BOr+PzqkM/ztaggUntYQt/fJKLtcNynAiyXQUW96qzCLPwn/DiutU3qExRsJmKfmVRw4PdaHBdSqW6an5U7LpomO4+UUDkAfGDTiw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(366004)(346002)(2906002)(64756008)(4744005)(83380400001)(110136005)(55016002)(66446008)(33656002)(8676002)(6506007)(508600001)(66946007)(66476007)(7696005)(66556008)(186003)(26005)(86362001)(76116006)(5660300002)(8936002)(71200400001)(9686003)(53546011)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?SWdtemFlU0tnYkVLR2tFQ0hCQXJ3eVBaUkVnVXNYaVNmRzY1emIrZkRFSzFB?=
 =?utf-8?B?aUIzSWw1bHFDNVc3ejU1WmZDa3JMVGE5TnRaYkFEaUZ6a01WZDdQbnBZdnla?=
 =?utf-8?B?MW9tQVpnRXJFVDZjandWamRmbGs2NTZqWlNodTllSVBNQWtod3ZrOXk0M01F?=
 =?utf-8?B?cnNsR3ByMTFNMFl5Rm4yS0lpUVM5ckoxNHNsYzh0L3c0eHl4Uk4xeDU3b1Uz?=
 =?utf-8?B?N2JYVmN3QXlOMHk4VTNvU1NvWXFaWVlCM2ppSzM1M09mRXJWazJxZFFtNFls?=
 =?utf-8?B?ZWlYY2xJOGRYSXM4VVQ5R3hJODZRUURVaThrL01jclVCL2VGL1lTV3diemhQ?=
 =?utf-8?B?Mi9KNDFEYjNqY1ZTSkozd0RzOE9TeTJjcjY2aitXeFg1WEtsQStsRjFJUEJu?=
 =?utf-8?B?MmtjNjdPeHVjcUhDbXBjbGtBU3lGUzZGb212VzVQaHVFVFkvTE16K1BPclBP?=
 =?utf-8?B?Lzg3TzZjOFhBUDJLdm03QWVGbWJ0ZHQvWG11T1pVQUw5TmlxNGtSazBCTG1y?=
 =?utf-8?B?bEdGZnY1UGMyelQ1RWFNYzFrWDBDR0J4clRPYStIdS9rUDhEVFd5MzRWTkZk?=
 =?utf-8?B?cEdHMnFlakZLRVlQYUFYVEpTamFxR01VbVhMZGtxSmxmUFVsZkI2QWZoZnE1?=
 =?utf-8?B?WnJlSFVDWk9Nc0VDV2RMTUdLY3VsQklSU3hENDU3UUVYWHExSXNCOUltT3RX?=
 =?utf-8?B?Tzdaa3pZbW9nNXB1MzVpOTZkTmpjU0JRWXdrNmR5elNqdlkxa0ZqTVNTSnEz?=
 =?utf-8?B?cWp6RmlHOGt0Y2xyOFZieVhFcVliKzRxYUw4S1RKZGRJZWlndHJROVBVWDZT?=
 =?utf-8?B?Ni9nQ3BwR0VlUDBZRThOZ29TRlJNZGxPMjJ6ME1ndmpjTExZZ1AvMmx2MkFK?=
 =?utf-8?B?eEFUWHVtSCtENlZJVGtTOElzd1dmR2JsaHhCRWNKQm1iS1MyZ0VmMXF6YzY5?=
 =?utf-8?B?TkpVMnBCYmRKWHZpOXZxbjJBS0Qxcm5OK1d6RGluUzhrbUkxc3pYVlBQYlY2?=
 =?utf-8?B?MmxzOHZ0c09JTkJYT3oyOFRTYXpER0pXSHdBdGNEd0xMVCtNZWRRZG9EdWFq?=
 =?utf-8?B?Nk1yd1B3YjFjbXEzb1IyU2txTXFlYk52MDVXNS93VEUwTnpjM1lWWTAzT05G?=
 =?utf-8?B?VU84dXd6dHVlL1UyT2FPR0d2ZHhlbW5ZQ1Q5SUZicHJ5SnJObGxqNWNEMFpJ?=
 =?utf-8?B?Q1FUbzA0ais3M3lBMEdJUWlCWkJ6N0dya0NXWEpMUU1rcHlrUU1zNitOMG1J?=
 =?utf-8?B?Wm5uOHl1Ty9GWCtHdnBxK1hYT1lTWnRWaHF2dlBUWmpNMjBrVUp6RkxSWCt4?=
 =?utf-8?Q?vS+EEBqdy3Gp0=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1246c0e0-b79c-4489-7988-08d89c00b340
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2020 05:10:09.3359 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: emOvfepNP6zBb1OZsRi24vKMgsPjvHyUFhHmYWAAxlBBebBWZLpOz8uwhQ6cTPn/5evtYeyzDesZcVAaVfP8EA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4265
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v1 07/16] drm/i915/pxp: Implement funcs to
 create the TEE channel
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks, Yes for single session there is no ioctl exposed so I correct the commit description.

Best regards,
Sean

-----Original Message-----
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com> 
Sent: Monday, December 7, 2020 3:56 AM
To: Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [RFC-v1 07/16] drm/i915/pxp: Implement funcs to create the TEE channel

Quoting Huang, Sean Z (2020-12-07 02:21:25)
> Currently ring3 driver sends the TEE commands directly to TEE, but 
> later, as our design, we would like to make ring3 sending the TEE 
> commands via the ring0 PXP ioctl action instead of TEE ioctl, so we 
> can centralize those protection operations at ring0 PXP.

Kernel vs. userspace nomenclature to be used.

The description feels incorrect given no IOCTL will be exposed.

This is missing an explanation as to why it would be needed for singleton session, so I think this patch should not be included in the series.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
