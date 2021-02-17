Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6AC31D70A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 10:31:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF3D96E039;
	Wed, 17 Feb 2021 09:31:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08F676E039
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 09:31:49 +0000 (UTC)
IronPort-SDR: gipMF0zUFDHCD+HPfqdPWyc5OZHKJPGF6sEferIfQaTRQcwODrjyhQxIV7DeD0Nc0l+CD2eERT
 029KabAW1LGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="182367746"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="182367746"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 01:31:41 -0800
IronPort-SDR: S3O93jFElcoDPFh47O7IpomnG1TcqvwacdTAjdnXX+v3EszQFdcEU7v86lolLOc9kf7P9NI2do
 mfQ/+dJZbMvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="385050426"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga008.fm.intel.com with ESMTP; 17 Feb 2021 01:31:40 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 01:31:39 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 17 Feb 2021 01:31:39 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 17 Feb 2021 01:31:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WUCjgmOIxR0QEwdC+IsdvoBuo3/C83vnb8IAdRNKLigPqkbkaPPTIo/ylt+GgyKotsVRkVsv+nWZntXQlLFtzFHRFFBcmtJJhmBcLmfDXQGFKfe74NgGpN7p5PZQ3Zyccv3x8eeQO83OYj14zd+3P6kogXc4BXHMy8L0i7hAWCtcGWQP1RKGUijFSVTUZQu1EGGCs+8ZQW8xIV5VAlkODt0OdwgGW3gDqp3wjwtRpf2ePIu0cwQeJsdcUcy8bTfIS+dDndEFcjyAbyj6wJ5A53wWLJ+Gu+V4W8I6lrP+ZQw3Vt4rZt0CSLSzeS56M5ZJiepDTM2UcQ8MC72oXC2NsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bnjoInTydZxkOPpU6TBA+5uk3TObSihyYAAXn2D3tvg=;
 b=WJP7EFTul3KhlvUgcsti4np7LkBMlqE9LlLfZjj+4x7VKJC6YYrTcN7Ln/9jEUVzDvajvmunOeobZGJY2aHimx1GQMbiVqmfWsmld8X/yLXJlfX5UFyDnDe3T76Y2E6T/Y+bbJA9SOu1k4fuK2NBa1Qx0tUjsGNkLzO07dG4B6nimlwjYrEztMmymTAB9mtD1uAG9+xvek7iRfmSxRmiKOiJeWVeTXwCC23M7EM0AbKlJe45uoBo33d/RwCbphahLSBwKx0lusvHtWX+Y68vCfpGX1VkFlFr7hxLm9YkfX6BcXdYXaZbFRvokTLyu7xOlikdXQ3F92QB1eP+qC0K2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bnjoInTydZxkOPpU6TBA+5uk3TObSihyYAAXn2D3tvg=;
 b=aMk5fRdmf3dcs/Rp8qS25pYNPbV4psmkJxVJbe/2QKOqhnM9ElUvaRIyCLi641BOV5CC7xYSvysMzfMGi+wb8WgMfFEqLc1ztYCgybOYXR6Y3l1cCa0ieZ5l/yglBS0Tkv5tHqGzEWVqe8YQR0sPBjwrdzDPNYvcB1P43uiDxeY=
Received: from SA2PR11MB4969.namprd11.prod.outlook.com (2603:10b6:806:111::12)
 by SN6PR11MB2896.namprd11.prod.outlook.com (2603:10b6:805:d9::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.39; Wed, 17 Feb
 2021 09:31:37 +0000
Received: from SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119]) by SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119%6]) with mapi id 15.20.3868.028; Wed, 17 Feb 2021
 09:31:37 +0000
From: "Chiou, Cooper" <cooper.chiou@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
Thread-Index: AQHWjFU7IwVkuEYdB0y1P7pkEmnx66pdBi/w
Date: Wed, 17 Feb 2021 09:31:36 +0000
Message-ID: <SA2PR11MB4969C1F85C058F0F89B38DF29D869@SA2PR11MB4969.namprd11.prod.outlook.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
In-Reply-To: <20200916180745.627-1-cooper.chiou@intel.com>
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
x-ms-office365-filtering-correlation-id: 68fc2745-7778-4ebe-2f12-08d8d326d2d8
x-ms-traffictypediagnostic: SN6PR11MB2896:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2896C447B2E0D371A83766369D869@SN6PR11MB2896.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i8bzsElmExJUz0DhXx3m8SiJiNhgUVQnRNEBqxB2X2IrjmDMl6ADfXTFj/+SEzF1AxzmL8I8pv1tu5aIfPcr66bTY0hFr1msooXKFEpnuqphNzG6LO27aTquei5i13/6m5LRaB3At0cv/wlVUfHerrz7FuJFCoBBXkIf/bTDTO4+XbCwegyrX/bT4tb5kLjCAmQeHu/CesoYGm6aWA6jJd6nnUcfpLUJfAt26aDB81fmJXC18M3utY/661YRF/CowHCFktikcZCZNOCJpZLcyxH0+VihmljuuBDGs1vG5Syg1b/yFVjhU1mYMblKOM1Etpbbpkiv6fCAIzIE/BkxDm0hKSHqt7kX8mYPCKRGLD/y5b06rj/uiDyjSxy4MwCyUw9+CVXKHWc4oKCV/D9UNCldpVAyqhfy1PeY7bGZKhi60NcF2uOlBbtK7+C0L6rqWvyykWedimz5rLviY+FT5iMHl+LEQ+LS8nNLUmOVHGmE0b+Zy0vHlxKzV5MQpy5eMoxZKg8oVgdcPh6J7TuomwWAXZIkPcgqFpcjJxU7axE4mxibTh6GWxC9ip2KbImkeg3QJhOBCL2yD25pNsrxFw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4969.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(6029001)(346002)(366004)(136003)(376002)(39860400002)(396003)(76116006)(52536014)(8676002)(66476007)(66946007)(64756008)(6506007)(66556008)(186003)(26005)(71200400001)(66446008)(316002)(53546011)(86362001)(9686003)(83380400001)(478600001)(6916009)(5660300002)(8936002)(7696005)(55016002)(33656002)(4326008)(2906002)(84040400003)(54906003)(213903007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?cUNhQUYreWxDK05ISHcvdmh4d3VvMC8zMVR2N0g3MmtORjZOQzBuNDZQKzI1?=
 =?utf-8?B?dGJxbWxaSHhhMkU5S2g3bUpPWmxjNi91blNiNVdhSEVycC94Y0xpQnFlcU5z?=
 =?utf-8?B?QkFOWHlJcTZ6UjBpeXpUMTNNSjZJRnl5K212dTBrNzk4Mk10dDZUQ3dqamNm?=
 =?utf-8?B?VWFkaVdjZVhiRzM5eDcvcnV2QlZ4OHZMR3BEVDgwN2NacmdDeUNKWStCblJG?=
 =?utf-8?B?WjJtWW93V0lwUVFZMGlEeGE0ZHEyMzhHWVkvc3NPa3BUc1RXbjlHSVZUWk9Q?=
 =?utf-8?B?alprMXFRRXVVZDk4TGxPL2FQc3dITkIyWWNtTUQ3NzVOWTE5QzRQZUJFdzZm?=
 =?utf-8?B?YVc4b2pKWGlvZFhPUkp5NG9SZFd0U29VZjltSXJOY1dVRDZmeUREcDB6VTJm?=
 =?utf-8?B?R0kvME1uMGNFOG5Hd3JHb0prSHRhM1BQTDA5VzNpWG9IamlQdjJSRDRpajZQ?=
 =?utf-8?B?a3EvV2RBaktJd09XemN0bjVCTVRRVTMyLzB6eWxxYlJyNVpEOGZPQmFpWUlk?=
 =?utf-8?B?VVQzbmc1eGU2MXJmTytsS25lN0RBaHVaNEJHTTllS0xNMWtneXVyS2t5Z1JZ?=
 =?utf-8?B?dmlZQ0NYNVBCeHBYWXBxU25kRTkzc2ZyMWZrNkNVTTFTVXU1UmRyUkJkT04w?=
 =?utf-8?B?dWNHQi9aSTl0eFhVUE1iK1hrNmlsVlN3NnBvR1QvQkUwaTVlZ0hQamZTWmdt?=
 =?utf-8?B?QUNUU1JMZnFvWEp3VXprVnRleU42Vmt3ZVpWSlNyU3dTYXptbzg0elpLQlZW?=
 =?utf-8?B?ekFBUzVvQUVmMWRkV3VQNTVoU0tDdGZzVVd4STJZSHIyakh2cnBtWFRGSEgy?=
 =?utf-8?B?dFdGQ0JYdW56cHlreFVvNEFGTk0xUlRJeWttcGg3MEowbDhISUdRelZieHRm?=
 =?utf-8?B?ZVllVEpYQzRObmdXTUZHRG9YcE1VTE54bXpKdy9veC9RUGVDd1kwNUovN3ND?=
 =?utf-8?B?aFpyb2hYdmwzMTFLczJ1RllncGpVRHZOdWdMekJEYnBJWEtpV2ZWU2dnN3di?=
 =?utf-8?B?Z3NQVFVlL082UGdtbEdDdGVjakRhQVhzeER3dWtmcHdYZ0F3aFNpYWd4UnhM?=
 =?utf-8?B?d2t1cHE1b1hsVlgzejhQdHdYU2R0ajFDR0k4ZkRhdmVLODNSa2JBNm5XSG5y?=
 =?utf-8?B?YjVRbngxQWRaMXZBaVFneWdMU0VnOXJtWHAzTFNzM3JNSk9abTRKNFJxQW4w?=
 =?utf-8?B?UlRza2w2dDBaN0J3OEJDaU5aMURlaUtubjdhUVNER1NLQ3lKYytQd21CV2Ez?=
 =?utf-8?B?aUU0aG9Ja3NKUS9oYVZBcG93dkJCTUZXVy9Na3ZQR2NRQTNxcFk4dUU5NVNu?=
 =?utf-8?B?ZFhBQ0QvUXB2V3B6MXNra1pQc2VOTzNlQU1MMUVDL2ZHUENmQ3pBT0FIQmZB?=
 =?utf-8?B?MjdkWmNtUFJDaGZPMk9QTi8wSmJYYWdVN2RiNlNJa0NtSXRYWjRNV0NKU1Vw?=
 =?utf-8?B?aWJyVk9yUXhsOSsyQjZkL1lYWUVCNmJGejZTNUJuRVNMUzdtOHFyWGJYSHds?=
 =?utf-8?B?T3RsaG4vNjhxYk4xc3VNd3hNeUNPWng5c0pGREVBaW94R3I5VmxYNXg4RXky?=
 =?utf-8?B?enhLQi9TTThoY1NVQ3NDUjB5ZTFxZG13OHdwN1VHbVhleXNveTlxUnFmMEtz?=
 =?utf-8?B?VElUcHlzNHBIVU9SSEVyeFhkRkd5bUhlbm9OOVJ1ZHE3ck1PdmJoRUFLMnZ1?=
 =?utf-8?B?amk4VGNuWTN0eStHQmd5bTNVSDlwY2NoYU9OS1hpSm1naFU2RWwyUzJHL1FR?=
 =?utf-8?Q?KrhqGR3obs/V+QQr4BKqn/U1Qb9Uwba28dL3M6Q?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4969.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68fc2745-7778-4ebe-2f12-08d8d326d2d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2021 09:31:36.9191 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p/yQXNQSSIiK2h0lzY4ZcrvT6CA2TowZ7MpNoYLFPrLVkz0PTbMM8sKXg/MkoOUcbrncAOxU3Z9teePbDQsDlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2896
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Enable
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
Cc: "Tseng, William" <william.tseng@intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgdXBzdHJlYW0gY29tbWl0dGVlLCANCg0KUGxlYXNlIGNvbnNpZGVyIHRvIG1lcmdlIHRoaXMg
cGF0Y2ggd2hpY2ggcmVzb2x2ZWQgVlA4IGhhcmR3YXJlIGVuY29kaW5nIEdQVSBoYW5nIGNyaXRp
Y2FsIGlzc3VlIG9uIEdlbjkgc2t1IGFuZCB0aGVyZSBpcyBubyBhbnkgcGVyZm9ybWFuY2UgcmVn
cmVzc2lvbiBvbiB0aGlzIGZpeC4gTWVhbndoaWxlIGl0J3MgY3JpdGljYWwgZm9yIENocm9tZSBw
cm9qZWN0cyBuZWVkIHlvdXIgaGVscCB0byByZXZpZXcgdG8gbWVyZ2UgaXQuIFRoYW5rcywNCg0K
QmVzdCBSZWdhcmRzLA0KQ29vcGVyDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9t
OiBDaGlvdSwgQ29vcGVyIDxjb29wZXIuY2hpb3VAaW50ZWwuY29tPiANClNlbnQ6IFRodXJzZGF5
LCBTZXB0ZW1iZXIgMTcsIDIwMjAgMjowOCBBTQ0KVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCkNjOiBDaGlvdSwgQ29vcGVyIDxjb29wZXIuY2hpb3VAaW50ZWwuY29tPjsgVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IFZpdmksIFJvZHJp
Z28gPHJvZHJpZ28udml2aUBpbnRlbC5jb20+OyBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT47IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPjsgVHZydGtv
IFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT47IFRzZW5nLCBXaWxsaWFt
IDx3aWxsaWFtLnRzZW5nQGludGVsLmNvbT47IExlZSwgU2hhd24gQyA8c2hhd24uYy5sZWVAaW50
ZWwuY29tPg0KU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNTogRW5hYmxlIFdhUHJvZ3JhbU1nc3JG
b3JDb3JyZWN0U2xpY2VTcGVjaWZpY01taW9SZWFkcyBmb3IgR2VuOQ0KDQpXYVByb2dyYW1NZ3Ny
Rm9yQ29ycmVjdFNsaWNlU3BlY2lmaWNNbWlvUmVhZHMgYXBwbGllcyBmb3IgR2VuOSB0byByZXNv
bHZlIFZQOCBoYXJkd2FyZSBlbmNvZGluZyBzeXN0ZW0gaGFuZyB1cCBvbiBHVDEgc2t1DQoNClJl
ZmVyZW5jZTogSFNEIzE1MDgwNDUwMTgNCg0KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50
ZWwuY29tPg0KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQpDYzogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+DQpDYzogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4NCkNjOiBXaWxsaWFtIFRzZW5nIDx3aWxs
aWFtLnRzZW5nQGludGVsLmNvbT4NCkNjOiBMZWUgU2hhd24gQyA8c2hhd24uYy5sZWVAaW50ZWwu
Y29tPg0KU2lnbmVkLW9mZi1ieTogQ29vcGVyIENoaW91IDxjb29wZXIuY2hpb3VAaW50ZWwuY29t
Pg0KLS0tDQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDgg
KysrKysrLS0NCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCmluZGV4
IDU3MjZjZDBhMzdlMC4uNTNlYTQzNTk1NDViIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KQEAgLTkzNSw5ICs5MzUsMTMgQEAgaHN3X2d0X3dvcmth
cm91bmRzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBpOTE1X3dh
X2xpc3QgKndhbCkNCiAJd2FfbWFza2VkX2VuKHdhbCwgSEFMRl9TTElDRV9DSElDS0VOMywgSFNX
X1NBTVBMRV9DX1BFUkZPUk1BTkNFKTsgIH0NCiANCitzdGF0aWMgdm9pZCB3YV9pbml0X21jcihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IA0KK2k5MTVfd2FfbGlzdCAqd2Fs
KTsNCisNCiBzdGF0aWMgdm9pZA0KIGdlbjlfZ3Rfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKSAgew0KKwl3YV9p
bml0X21jcihpOTE1LCB3YWwpOw0KKw0KIAkvKiBXYURpc2FibGVLaWxsTG9naWM6Ynh0LHNrbCxr
YmwgKi8NCiAJaWYgKCFJU19DT0ZGRUVMQUtFKGk5MTUpICYmICFJU19DT01FVExBS0UoaTkxNSkp
DQogCQl3YV93cml0ZV9vcih3YWwsDQpAQCAtMTA0MCw3ICsxMDQ0LDcgQEAgd2FfaW5pdF9tY3Io
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkN
CiAJdW5zaWduZWQgaW50IHNsaWNlLCBzdWJzbGljZTsNCiAJdTMyIGwzX2VuLCBtY3IsIG1jcl9t
YXNrOw0KIA0KLQlHRU1fQlVHX09OKElOVEVMX0dFTihpOTE1KSA8IDEwKTsNCisJR0VNX0JVR19P
TihJTlRFTF9HRU4oaTkxNSkgPCA5KTsNCiANCiAJLyoNCiAJICogV2FQcm9ncmFtTWdzckZvckwz
QmFua1NwZWNpZmljTW1pb1JlYWRzOiBjbmwsaWNsIEBAIC0xMDQ5LDcgKzEwNTMsNyBAQCB3YV9p
bml0X21jcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlz
dCAqd2FsKQ0KIAkgKiBieSBkZWZhdWx0LCB0byBtYWtlIHN1cmUgd2UgY29ycmVjdGx5IHJlYWQg
Y2VydGFpbiByZWdpc3RlcnMNCiAJICogbGF0ZXIgb24gKGluIHRoZSByYW5nZSAweEIxMDAgLSAw
eEIzRkYpLg0KIAkgKg0KLQkgKiBXYVByb2dyYW1NZ3NyRm9yQ29ycmVjdFNsaWNlU3BlY2lmaWNN
bWlvUmVhZHM6Y25sLGljbA0KKwkgKiBXYVByb2dyYW1NZ3NyRm9yQ29ycmVjdFNsaWNlU3BlY2lm
aWNNbWlvUmVhZHM6Z2VuOSxjbmwsaWNsDQogCSAqIEJlZm9yZSBhbnkgTU1JTyByZWFkIGludG8g
c2xpY2Uvc3Vic2xpY2Ugc3BlY2lmaWMgcmVnaXN0ZXJzLCBNQ1INCiAJICogcGFja2V0IGNvbnRy
b2wgcmVnaXN0ZXIgbmVlZHMgdG8gYmUgcHJvZ3JhbW1lZCB0byBwb2ludCB0byBhbnkNCiAJICog
ZW5hYmxlZCBzL3NzIHBhaXIuIE90aGVyd2lzZSwgaW5jb3JyZWN0IHZhbHVlcyB3aWxsIGJlIHJl
dHVybmVkLg0KLS0NCjIuMjguMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
