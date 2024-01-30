Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B809841BEF
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 07:25:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE28010F4D1;
	Tue, 30 Jan 2024 06:24:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7B0710F4D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 06:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706595877; x=1738131877;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=77+WxyNRQo4ThrqmQAtkcc2bVrM4t5d94f2jM1u57mE=;
 b=LeSGm1x2gap21xV05pwXFYBnUXG4kq1nUXLJT+KJDtoC0fn229x/5oxf
 7nwOWJC1dpydXoqwUC+asqj1hrhqPSnNceaKppcQMmndJmnLJ8NZkoLxP
 RGipO5hcMzSZJmf+MlbNFyClxWSaB9umDX0jTVsld8lUC5BczvAzfWNQS
 ii7qqSpk01pv/wrOh/qAEACWeUPE9Ga4qolbTo8ay5+CWGss/vTSzIfJq
 HIxLBl3FHCa1Wmd/2WBnrMp5Bt9mG+Pb/gLXDxKo/Exnmchvk0whCQq8X
 VtibZouozFehfzkHlXdyUBOQEdP+9vze+79UUzPFAF0WV8iWBHEZLv/uC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="21701653"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="21701653"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 22:24:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="961153941"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="961153941"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2024 22:24:36 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 22:24:35 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 22:24:35 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Jan 2024 22:24:35 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Jan 2024 22:24:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bD4SHdzYIuGZ6PDUwdg71sP5x9q2jaEjjyIIbcktG9j7fg1qoIF/AZMkIr0/yR89jyv3uN1c6MivgZmYmF4MP1VvBvOr85voupt/XqBNAiZfIP9jhr+hnfrVOaRgZysyde6bXnX5lvcZKIpTNk/9ePFMOokfqiZ5da7AvRw/4FGNdajxYeoP59EZbUmFJDlptAW6479KWAi8XCkk8A19g3LiBI2YO0rA695JkLZagLsRSyCxN4jjVCEEB2uu82DRRyjNNuNlznBhHAlgX47kz7aoVTLDnNeL01OHoW9wss5p/iaCn4A+dEhJj/c/2mVidEZv+6Q7aYYqayi3CCEFvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=77+WxyNRQo4ThrqmQAtkcc2bVrM4t5d94f2jM1u57mE=;
 b=nYiLwYfpUuW6QqzWYWVozZ2GaO6aYPzcgqxffG5xyb6X8tdY79oLjwFXf5h5qbmf+6VVhsk2JcZFdNEEiRpgOQbscCm0y9djBHSxxsNyDzCkx8L4Unlb+gXrn0xO2RljiNpd8J3y8Ch1MyBrTa3QgmafR14aTxMTmBNva1BoXonJ2Cl1B/Xvvhb5i3EhpDIodk5slcJTTs0u88DFALTFpO32iE1nEqZXHzj7+iX7pYn11zb4riUTAMAh395Ca0viPSPq64krlpSeyfI8c8NU4se4zWwkHRMHIfo5Rhy3c6dqKLFwTtPAYHSoW/13jJl9KctpdntZSkI/JDIrf8Tokw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by BL1PR11MB5269.namprd11.prod.outlook.com (2603:10b6:208:310::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Tue, 30 Jan
 2024 06:24:33 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::a8e9:c80f:9484:f7cb]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::a8e9:c80f:9484:f7cb%3]) with mapi id 15.20.7228.029; Tue, 30 Jan 2024
 06:24:33 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Lu Baolu <baolu.lu@linux.intel.com>, Joerg Roedel <joro@8bytes.org>, "Will
 Deacon" <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, "Jason
 Gunthorpe" <jgg@ziepe.ca>
Subject: RE: [PATCH v2 1/1] iommu/vt-d: Remove INTEL_IOMMU_BROKEN_GFX_WA
Thread-Topic: [PATCH v2 1/1] iommu/vt-d: Remove INTEL_IOMMU_BROKEN_GFX_WA
Thread-Index: AQHaU0OIVYF9w8s9LkaxJ4DVx0n2bbDx40vw
Date: Tue, 30 Jan 2024 06:24:32 +0000
Message-ID: <BN9PR11MB5276DD160FDBEC47F9441F008C7D2@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <20240130060823.57990-1-baolu.lu@linux.intel.com>
In-Reply-To: <20240130060823.57990-1-baolu.lu@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|BL1PR11MB5269:EE_
x-ms-office365-filtering-correlation-id: eb2f078f-818b-4642-b054-08dc215c1f8b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0pYK0aQTUQ/rC0EPVstb7tGtd3Qur/IOxpKB2X5dHG8MjcL7XoyE7WRuICfnTsg/WcuObfa6E3fRdMV8CGj8OJskHGgS0tN8dQ398BsGBKdM44AM/KpewWMxx5bdcIMaaE+kgTEwf5jPVHdZiA1S461Wft2qsRwF8XfCXYtWCcC9xGXbREtlzNChRczQsuHnFWGyJbhaCwJxluLsK08mLeQ6uezPU4GTcA3DYUKZKr23oZp6jcblQi5KQytRcaNdl2GNPm1G9kDvsUYjjsq9KEnrRIke3T1SE3eKxvLhEJtpo5yM1jbP3T9ccv7hlrLmhGz06/CUg3Qzjjn3SXbnL2+5vumcAMwR+Tgl51V4Fux+0og9aTRefbQo4nujYakpPOvKgs6Apf5AZ7LN28TIhBKdxSkcwR7riInw2K+9/sSnhIr94QjrPGk+FcGEuTg43MJMDrzheWP0IjCfDHPExyIhZeB5W2xpuuo1kl6Od+NV8sYdebNgUPNzXXxrM47ra40obnMZbIcG6EbDC0SrX8KVxX3ni56F9E+Uv8AsAbWHRCVVMLyvRbZ1L8LL+kCUmPjEsxXg4p3oj6iyTKEnjtQLkhJcz36LZjtOb1zG+Rcog1Rbu6mW2nhKhUmNU4Ks
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5276.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(346002)(376002)(366004)(136003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(9686003)(26005)(83380400001)(55016003)(316002)(66476007)(66556008)(110136005)(54906003)(64756008)(66446008)(478600001)(66946007)(76116006)(7696005)(6506007)(71200400001)(4326008)(8936002)(8676002)(52536014)(5660300002)(86362001)(122000001)(38100700002)(82960400001)(7416002)(4744005)(2906002)(41300700001)(38070700009)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?g/7PHOkZ7zGVU0OYEYJFpC72bg2f7Ohs3KKErgb1NHPC9nh6K8bAgIgIsSVK?=
 =?us-ascii?Q?DDzndIcHV/ezvDq5FXaKzjH/qMyF+SWPZC5mWkO/zS+eU0Bs1oM1XPCDnWr8?=
 =?us-ascii?Q?ABy6zu9UIjhTKh7BQkE5f14hHB/uiiASBbjONYVUsDGf9Uo37RG7qyJMuyrl?=
 =?us-ascii?Q?3D6nk5+6KiEf0pmZR3TjPiMayTD1MT3h9aisEmljIE8Q/aGXunIqiGBWLnYw?=
 =?us-ascii?Q?ZpjsTHxxOnz+2+uSV06UVo7YUmCyXRwLc2I2g4arSvXTiKRb2npwDYNOgFtA?=
 =?us-ascii?Q?V4qA1QzV6K5Ve7QONRZIS4LEMx+5d2+4+BUOMcZLVoJC4q6NXCaJ4HH32qa8?=
 =?us-ascii?Q?ktqg/zE/h51KXtgmfFK1BtdSs+XhMFWwQEQOAKTQxJwucbZ84uXcQWtDWXQ7?=
 =?us-ascii?Q?uHAcXjVkLPdWDuj5OgGQ2N5BSs7TzYbyAOzU9GguVdcbqfFy+ZRsZcfqjfQK?=
 =?us-ascii?Q?yXQJaIoKDbE+j32Bnmp3FfiU4h/lsyWimUpXvwlmy2P9UPYUwR/5pqwk19hf?=
 =?us-ascii?Q?PUOhCMjmNyC/4Qdflo3tS3ACn1YTVnjj6MJILvpneutyEgqL5Vqm76XF+JrG?=
 =?us-ascii?Q?FQANruiNrr8FDV64g45+30dVPv1B2fCZOqvayrP0qlqIk72bCit1edp1psVk?=
 =?us-ascii?Q?ToTiZcGvSfwDxadmP2x6gD7KljKgh7phpyfCxu0dfAHeoCxS+LsodEROvHMP?=
 =?us-ascii?Q?aWcQtQ7Cn8QC7RP+gRNgekDs9Fwx2Jk2WFlFaosxLVN7hEUOlm26pL9YdMWF?=
 =?us-ascii?Q?E47QyNAFzLSQ38UVWHqDcrgpjCB6LKqVLwVbN8RNORJaZI0TdRXk4GyRIWAi?=
 =?us-ascii?Q?eQjyqJ/6vsg6KRBGR3RCnLHFNRJ9tj+LR5xga2UlJ8y8P9nM2h/q3ZZD/f4t?=
 =?us-ascii?Q?0Awmb9KL/bqj4sy5VqXSsa6kONDlXA3uPEbxOCw4yQGc8g7V+YmQtsELgWxO?=
 =?us-ascii?Q?WPAX2PabnqmqFngeHEA63VE+nt/8ZBf+89a38qiIionmjuX0pRR49VptbBBF?=
 =?us-ascii?Q?w/pCyugVS0J2a7crUcLJYqvhoAQpxEjcFO4M/TNDC9h3fvllFL2YTj4UtWka?=
 =?us-ascii?Q?UjRClzieKGUZQmeEgoJspjoqewRXILolKpGH4HliNCVsV+E5PF1ahzijJi9Q?=
 =?us-ascii?Q?esHOZhX0qxn6xRPzPj44HxStP2GcjDJvCDf5Thi10XCt/CDEFICKZeB4X55n?=
 =?us-ascii?Q?ZWyNfvFcqiuyV/aJkUWnf82U6i8auueOXV5uNS0yM8iuNKCBBzRGXpEcNbD0?=
 =?us-ascii?Q?czFja/vOz0OwMqAak2GjqF8scSZ+W87x7cvY9rGu71FkyxOIA3mw6S2RQaMS?=
 =?us-ascii?Q?DO8GFmvtfpXPf2V2LWTypj6f2I0Inovvu1uu50tYNtsuVrP86ab36buUDZ3x?=
 =?us-ascii?Q?9yrFVQLJBjz7m/+zS3LO4411QqkU9lrlw+IFjGrA2+mAQElRHPGLScde0T+a?=
 =?us-ascii?Q?zKzJaFcSgsl2JwqttAv7Mtdg2YbtSCXczaLhHq+acg3nL9X2VrTq0Ti7j33k?=
 =?us-ascii?Q?GJBddTq5Ka8tHYFsyDQx7IQ+Pb2/8CU/k01ErfhvXxWsT6+J6fKnrjVqyZn+?=
 =?us-ascii?Q?385k8wnGtk6mUTVLD6pu/ZqE6/uRNudtAf3YiRk3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb2f078f-818b-4642-b054-08dc215c1f8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2024 06:24:32.9505 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TKznmAupkuUwmbf9IBKtVB/oDYjhp0vhpm3kAqxwQEnbjRt+qaaOXk+eBT6BOecDjd4/7cJnIxrYtKa6fclXiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5269
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> From: Lu Baolu <baolu.lu@linux.intel.com>
> Sent: Tuesday, January 30, 2024 2:08 PM
>=20
> Commit 62edf5dc4a524 ("intel-iommu: Restore DMAR_BROKEN_GFX_WA
> option for
> broken graphics drivers") was introduced 24 years ago as a temporary
> workaround for graphics drivers that used physical addresses for DMA and
> avoided DMA APIs. This workaround was disabled by default.
>=20
> As 24 years have passed, it is expected that graphics driver developers
> have migrated their drivers to use kernel DMA APIs. Therefore, this
> workaround is no longer required and could been removed.
>=20
> The Intel iommu driver also provides a "igfx_off" option to turn off
> the DAM translation for the graphic dedicated IOMMU. Hence, there is
> really no good reason to keep this config option.
>=20

s/DAM/DMA/
