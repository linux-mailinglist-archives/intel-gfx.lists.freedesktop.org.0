Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3089329DC
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2024 17:02:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D1A710E03D;
	Tue, 16 Jul 2024 15:02:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OL4LIBJT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B58B810E03D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2024 15:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721142163; x=1752678163;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C0+Vn5MJFB9LUROK9KQpHLhnvHpTb4YAOcy748Z4t5Y=;
 b=OL4LIBJTwa38fmCI2DKRU9J2yF/ekLHdQgmxyUg+hAqcBghxDNJOAi0A
 w+YKJvZiHv41Bu/qOtitp29O1rLwxcOY89zrqslfbuzSfpkzcv8dxIzmr
 5ZK8ygrUbogVzVsFAPlzt+Kj6cUWDq5LtPeOdO69t7IaihqZOTrd6joax
 CN+GhbCkyZ/B+sSpjr7qCvLohZQIDj7OPZzFZ8L0LV+er3ueFnxN6/Nuv
 zr+L92eKfxlHWl8BmGC4sHjlDgsIlzJvgXhwvDpmEjm7O1qS6sIuj1/nG
 mPjXehmqms/PxEjQEnjtD60aHVIkXKeoANz9Z3d1wmusptyduQWQmvhWO Q==;
X-CSE-ConnectionGUID: za99Xk9JQrCZICKVLTAX9g==
X-CSE-MsgGUID: BN7sHk7bTeO2030/Ce7cSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11135"; a="22449657"
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="22449657"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2024 08:02:43 -0700
X-CSE-ConnectionGUID: 3OdRn89hSuuHF+pwD95xEA==
X-CSE-MsgGUID: laNi4+d/RFi9k20LWz+JSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="80712586"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jul 2024 08:02:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 16 Jul 2024 08:02:42 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 16 Jul 2024 08:02:42 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 16 Jul 2024 08:02:42 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 16 Jul 2024 08:02:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BC/C0wP+jtu3gtsEyC85WwiJ2mxoNPi/6e9ySPgFx4ekJkpQjO2FM6mybHEbY5EzUdLj10mgPioEf28pMsHZZVA3yliNelCekMRdNRusawDccTCBzFUG560ekg2a4YCJaX+3a+PVsoAIm3XLFCcdrEPc96xEd0F8uirHlKhMvcb7O/ko5YQI/As9X7mQVfNVJMsAgwgqMq35KHl7J1UCNJXmOSSJ9ZzHi9zRqqtVETwcd4hZv/UzQ2Mh9/g7RvyzaTJ9FMuppRW+mQ2qwvEBHs7pqwOaGEPxbEMuZpH2qo9GXr88EuXo5ygsHEb0tGSXSvlANE4o2gpq1rtb5mY/sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C0+Vn5MJFB9LUROK9KQpHLhnvHpTb4YAOcy748Z4t5Y=;
 b=Vctz2Fy7/Iy0W0MaIqHEa3+IncWgNwlJ+DIJLgq4ChfOcB2jo+sZR/nSyfj/0vH04ixwvqC27nplk5l+jp1KekkNl/5Et+D7tDpBvE3+Yy8xH64ZmftaGcQaXg/NoRqCgDoy7udwYM09bqSiLQlbx7Ryj2UBAlmNaEpeSeIQAn/KmccZ/bgqmQl/NT7Wdsk8exOJkxN7pqxcTGtuY+wy4y44XzZ3IU7vgo7lKY9dHtfxjsoqreBC9l/kDr6TiYh7DaljQqyT6+VKP8596VjnpuBnFuup6hFBMiD8QEBgPrXx9jJHH0QaNZANVVg5ThDHpDl+DGUvPc+MpHCFvnhPRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CO1PR11MB5074.namprd11.prod.outlook.com (2603:10b6:303:97::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.27; Tue, 16 Jul
 2024 15:02:39 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%7]) with mapi id 15.20.7762.027; Tue, 16 Jul 2024
 15:02:39 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Lai Jiangshan <jiangshanlai@gmail.com>
CC: "jiangshan.ljs@antgroup.com" <jiangshan.ljs@antgroup.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: Regression on linux-next (next-20240709)
Thread-Topic: Regression on linux-next (next-20240709)
Thread-Index: AdrUGlgPzCjArjqLR6Ou8zsvlQzOkQAHokAAAMJl3MAAE5Gw8A==
Date: Tue, 16 Jul 2024 15:02:38 +0000
Message-ID: <SJ1PR11MB61290A3105C95E8C6BF171DFB9A22@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB612946A115B182F4C81692EDB9A62@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <CAJhGHyAFn96n8vW4z_cmXLCd4p1HfxQBLR-u81m8HipWRVsJZg@mail.gmail.com>
 <SJ1PR11MB612916646EC106E6AEA22149B9A22@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB612916646EC106E6AEA22149B9A22@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CO1PR11MB5074:EE_
x-ms-office365-filtering-correlation-id: e6c88746-5270-4781-f0ca-08dca5a855a4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aFRSMWNjMTRjeFhyL1RCUGVnZWRmRFI4SXEycnArU2F3c0NvUGVqSjRpdFBk?=
 =?utf-8?B?a0JBdmx4ZTN6NEVjdWNlMkhxMW85aGxlQUFvWHI2WDJORHpLM0hKT1c0R0Rm?=
 =?utf-8?B?RnRGMFM3M05Xa2t2S1Z0c2FJOVRvdkhWRUJUK1FQTmhkeVFiVithSk1CNFI2?=
 =?utf-8?B?dU82NzFaOSs4NWNZd1B6SEIwajYrd1A0VGF0dXZmb0w1eHZjYmV2TU5zc2VI?=
 =?utf-8?B?YWpNRlRmckRiSno0S1JBdER5U20zTUlsWHNYR2I1Wmx0ZkVuK25HbG9jdkt4?=
 =?utf-8?B?bXRRM29lL256QWNaWGN5YkNNVENDU2tSMjBlSUdmYUlJMktxK1dGaEZodXVH?=
 =?utf-8?B?aXV6RG9FUWxBUXI5OXk1YlVlT25SYjhET0NCdHpQSUV5U0JhbWF3QWorRUhk?=
 =?utf-8?B?ZEpDbjZwM3ZtcjRDVk8vTUI1U2RTd3phbVh5dWducEdPR0tJbXg5UHBsUW9v?=
 =?utf-8?B?S0paeHdqTDl2b3pZTTRKVTZsSU1TZU5wcnZoNEZrekdDeTRZUHRxZklzUFk5?=
 =?utf-8?B?VklqWnRaYTFrS3IyUWh6d2pROUowa1VJZkh2OXFCdW9ScEdEdkpYZEdqc3FI?=
 =?utf-8?B?TC9aTk9mS0V6T0NsVFpBNFQ5Z2pGMVVjdWVBMEFscldOOVVIUmMyaUhUV3J1?=
 =?utf-8?B?NStvaVdCWktIWHVPUWZBOEVncnFBL1pHd2pLZjNtaGordytIOTk2TkR2VzFi?=
 =?utf-8?B?RjQ4RmlxZDV4UCtvY0JKRUF6SHVnMVM0TWVRT3RaNnV1UlNjZUNxT3c3RGpE?=
 =?utf-8?B?ZEJDUmI0VDhUcGczWFZraVMrOVNTTmx2SzF6c0hRWmpCaGRoQlpvNlFkTkg5?=
 =?utf-8?B?TTNVUm5iV0tWNnowWjRPVnV1ZFM5Y043c3VFM2dJVFpOWjR1UkFwaWFuQ3Ar?=
 =?utf-8?B?ZjFDWWZnd1lsZW9lM29GSXRyYk13UUVYZXZkSFByb3JjYWNoVEcyMmx4MkpG?=
 =?utf-8?B?MlVaNFZWV214SDd2d2diYy92YlErL1p0aktuQk1ZTEdWZzd2V215amMxL0gv?=
 =?utf-8?B?U005VmNUVm1lRXo4M2tjVFNpVFdwVnlUYWM1clczT00zcEVsRnAxNndObm1a?=
 =?utf-8?B?ZloxQjNPRzdkOGExZ0xGS2dSRy91ZngwdTgxRG5TSVJySTZWcjFTR2d2eWpw?=
 =?utf-8?B?aWRobFFHK1lwaHdLN29FckY4ZzlHTnk3R2VCMFdDb0VSKzVaUVdoTFgxRE5I?=
 =?utf-8?B?TGwxS2tpaFU2WFVIcVhmN1pMRDhLKytXWlhRR3lyYzZLMkNZaUhNRWxERXE3?=
 =?utf-8?B?YnlKSGFUMDR1VmticFU4VHNnSEZOUnQzeGZUblpseGFjY0N3cVpKUzVNZ3Zj?=
 =?utf-8?B?UXV0QjJmUzJDL3BTOTdrckNWV2pRb2ZuVWdYbDFtc2trbHpaaS9kQVloY2N4?=
 =?utf-8?B?VGgzc1lRaFZjOU8rNXlRNVhWMFZFb2IzdUVweVBwWjh1V1RHbHpRbXRMRFow?=
 =?utf-8?B?QTBCbVlqUmFiZkMyQVpmMVJ6SGpqL25zR25BNHhreklybGZyOTh5WnBtNTdu?=
 =?utf-8?B?UHdscFR3dlA0bGZHTUl1NTRIZGZob1BnUUlZWkNKYTJ2WVM4WEYzRnlNd1FS?=
 =?utf-8?B?YjFjbXZiM3Z0cDNJM1M3dkdTeXN6dWI1NEhGaDZGTHVZQUhsbld6SUVZYWxh?=
 =?utf-8?B?TStkUVV4WFl3dWpDNFBvdXRSdUlidnVMMXYxMEtOR09iU21tUXdSR09OZmRq?=
 =?utf-8?B?QjNveHlZOUo2MWEzMkZqeVFuNXJZcjdpaHZMait0MXBjOGJGZ1Q4WmF0MTMz?=
 =?utf-8?B?bFAxcDdXUGJxR3J0THJHYUV5WWN1Snp3RHBrV3F5aEJLeUdQWUt0WFJ4OG9o?=
 =?utf-8?Q?jbxrf8zstqG6fQGt6ogm/wYavyOjk53LkDNMc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZktFQndUemdCQkZLcCtjaFk1TG9lUTB0b0Nra1BPRDhzT2FieURFeDFpN3Bv?=
 =?utf-8?B?dkdEUXQrOG5JNk9mK0pvUTV4bDAwQmxPREppSytxUGU1YmNkcG9qbjdLbldU?=
 =?utf-8?B?NGcwY3BRTXdqbGR4VkllRVpjV1oxdmFxdC85bDlLUXBlUVNpNytaY1hnZlYw?=
 =?utf-8?B?T25RTm9yNUIxSy9NdkYvakk5dTFBckM4YTdzdTRwL0VreEZkdFZjVjBPL3R6?=
 =?utf-8?B?cU1SR2psUlBMZm5IZWxDQzduTDJ1enlrQzRIV055bGJCYm84TjhHL1h3STJP?=
 =?utf-8?B?b1lSbldXU3dwMUNjSllNdk96a3piM2doV05yYW83eWlrT2F1ZkFBRndlOWZB?=
 =?utf-8?B?YS9GVTkrK3FRejRjV2lUenlqUlp0UFJadndoN1ZFZkpZUzdudXRCWFZzRkZq?=
 =?utf-8?B?a0V1T3RJZjJSRVJyZFFET1RBcnJ4eFBBTG9XTW1tb0NzTkk2eWMvUnhUeXpV?=
 =?utf-8?B?UmxRYmRES1ZZVTA4dVV3VkgvY0lJSUtEeFh3b3k5TGNVMHYxdVRnd3FuMHgr?=
 =?utf-8?B?WEluTXVUWUVMdTRIZDVnZ0hmUTZ3ZnB6UEdlTTh2TklWbHE4NGZYdVhFV2ZN?=
 =?utf-8?B?cjFjYWxNMmhPTEEyeVhBS2FkZCtpL0JMbUpiam50b0JIdUlLQ1NXczZIb1dk?=
 =?utf-8?B?b053WTZ1cldUaDR2ZjNnZTJHRnhpUUhsalQvWCt4TUR4QjJ6K2VoSzVBblNK?=
 =?utf-8?B?ZlFYajFSL3BwdHdod0puKy9SVlJ3bVladVBtVVMyeUdicFdhQ3FYb3lvS2Va?=
 =?utf-8?B?NEVMVUc5dFV2S0p0TWIrQTdwNjNyMy9PRVBsdHU0VityWU92elBhNFJFSFU0?=
 =?utf-8?B?VjlqQjEwM0xmQ3kzOHl2NXVVY2NpRTFwNWQ4Z1dQRUI3c2c5UFJuMENucVk2?=
 =?utf-8?B?am5oOEgxQ3BiYXF4bm10UTFHQlNYekRSd3JHcjFoWGtFbGM3U253YTNpNkZs?=
 =?utf-8?B?M0tYOTM0UUpQRXVJd1BGckRXVVdnRVRtd2kzMmFoY0hJcTVaVnVDVVZLTUxH?=
 =?utf-8?B?b3hPK0lxZE4wS3oxYTM2L04xM0xTaUptL2pCTkQ3QTRLZVdBektjYXM5QitQ?=
 =?utf-8?B?RjBJb3ptaEJOa0swZUszb1RpNWVsTlBrcDJ6QkZYWGNCWVcxYi9MMFR2S1o3?=
 =?utf-8?B?RTBBVnJ5ZlFjSkRGSlBCaWM5VnZrS1Y5bmRSRmhMQXRqOGxPV0NUVmJRV3Bh?=
 =?utf-8?B?aFp3UTJ2ZUx1TTVpMzVSSEgxQ3psSGN5TjBpZHVPT1RvN29sQktXN0dOOG4r?=
 =?utf-8?B?cmx4QXNkcXJrUloyOFRGZUdzbDdxRXJpN2ttb0JDZThhTzl4Zm1lTitVV2tR?=
 =?utf-8?B?R0Zub1FJUVJLTldhMVFtNk0rTFpORkRXWDluSlpLeU5YTEdXY1VMWWVyZ1Uv?=
 =?utf-8?B?Y3U4UHNNTGhraHhJQkU4aEpqRGNLMTdkbDJHM2NGV0ZLSzBxMVg2Q3ZxMTk4?=
 =?utf-8?B?cjRNbkRQOHQxQUQxUURveE5hMWp4T3BvR0RvenRmc2U5ZGorREhvVUZiV3I5?=
 =?utf-8?B?b3R5d3ZyMVpoN0IrYWVGRVRXSURuNURmR1FUd0pPVjEwbWVHRDhRbjUwWnhs?=
 =?utf-8?B?RU5xWlNrZ011UjF0SEV5UVVvaFF1a2crSytOY1o4UXEwbS9Pc2lON3kvWGgz?=
 =?utf-8?B?ZVNkV0h1N2ViM2g0VjRQWEdBdnNhWkN6bmcrRlY2VlRKcWEwNC9UZWN0d0Uv?=
 =?utf-8?B?UDNnbGpHRi9DTldLaDBuOGJ1UFJrOTliTGZmcWtoS3p0MnZ5WjNQNzF3NG96?=
 =?utf-8?B?dVFOU1lhMU1PVENGbDBYT3lqc2FvTDZDU0ExbkZKRlZkR29oYnh1V1ZzNUI1?=
 =?utf-8?B?QUhLem5ldXpwYUZsT3JIamRKaWdYM1NmYVkrblE5RVNiN2o4UjJoRDBJdzh1?=
 =?utf-8?B?Q20yTlRPU0VVS29wNlNNS3pqU3FvbXhybkxnWk9Icmp2VTFCcGRKL3UycmJV?=
 =?utf-8?B?Zno1dnhVSlZTQkZtZk5WcnMreXp2MEdMQzh0ZTdFb0NtUmVjYm5FQzNPK3o4?=
 =?utf-8?B?NUw5TC96VHo0aTA5MHY5b1hrVEdtQkFXcHp0UUxuS2htMVJxM21oV3ZyMkZo?=
 =?utf-8?B?Yk1NRnRvRjhqc1NSTGlwdVlkU2lTZFdOSDJhL29NVW9rT0tVTC9TZHlNZm9l?=
 =?utf-8?B?Y2dzUW9QMjBpT1czUmJtby9sT2FRdWgrV095bUtjZmQrcndLOTZucVpiejVh?=
 =?utf-8?B?bkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6c88746-5270-4781-f0ca-08dca5a855a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2024 15:02:38.9590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7ih/CTn6jgrJITAmO3LAdcFI8HVWlxu9c0U5N9Q3VQtTm/zc1MiOC3zg3bs2yBHex8aerkuFgGmRSgLG/2r0e+y83BNEGLINJtFd/NxfIVY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5074
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

SGVsbG8gTGFpLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEJvcmFo
LCBDaGFpdGFueWEgS3VtYXINCj4gU2VudDogVHVlc2RheSwgSnVseSAxNiwgMjAyNCAxMToxMCBB
TQ0KPiBUbzogTGFpIEppYW5nc2hhbiA8amlhbmdzaGFubGFpQGdtYWlsLmNvbT4NCj4gQ2M6IGpp
YW5nc2hhbi5sanNAYW50Z3JvdXAuY29tOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBO
aWt1bGEsIEphbmkNCj4gPGphbmkubmlrdWxhQGludGVsLmNvbT47IFNhYXJpbmVuLCBKYW5pIDxq
YW5pLnNhYXJpbmVuQGludGVsLmNvbT47IEt1cm1pLA0KPiBTdXJlc2ggS3VtYXIgPFN1cmVzaC5L
dW1hci5LdXJtaUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiBTdWJqZWN0OiBSRTogUmVncmVzc2lvbiBvbiBsaW51eC1uZXh0IChuZXh0LTIwMjQwNzA5
KQ0KPiANCj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTog
TGFpIEppYW5nc2hhbiA8amlhbmdzaGFubGFpQGdtYWlsLmNvbT4NCj4gPiBTZW50OiBGcmlkYXks
IEp1bHkgMTIsIDIwMjQgMjoyMyBQTQ0KPiA+IFRvOiBCb3JhaCwgQ2hhaXRhbnlhIEt1bWFyIDxj
aGFpdGFueWEua3VtYXIuYm9yYWhAaW50ZWwuY29tPg0KPiA+IENjOiBqaWFuZ3NoYW4ubGpzQGFu
dGdyb3VwLmNvbTsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgTmlrdWxhLA0KPiA+IEph
bmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IFNhYXJpbmVuLCBKYW5pDQo+ID4gPGphbmkuc2Fh
cmluZW5AaW50ZWwuY29tPjsgS3VybWksIFN1cmVzaCBLdW1hcg0KPiA+IDxzdXJlc2gua3VtYXIu
a3VybWlAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFJlOiBSZWdyZXNzaW9uIG9uIGxpbnV4LW5l
eHQgKG5leHQtMjAyNDA3MDkpDQo+ID4NCj4gPiBIZWxsbw0KPiA+DQo+ID4gT24gRnJpLCBKdWwg
MTIsIDIwMjQgYXQgMTo0MuKAr1BNIEJvcmFoLCBDaGFpdGFueWEgS3VtYXINCj4gPiA+IGNvbW1p
dCAxNzI2YTE3MTM1OTA1ZTJkMjc3M2YxOGQ0N2JkNGUxN2RkMjZlMWVkDQo+ID4gPiBBdXRob3I6
IExhaSBKaWFuZ3NoYW4gbWFpbHRvOmppYW5nc2hhbi5sanNAYW50Z3JvdXAuY29tDQo+ID4gPiBE
YXRlOiAgIFRodSBKdWwgNCAxMTo0OToxMyAyMDI0ICswODAwDQo+ID4gPg0KPiA+ID4gICAgIHdv
cmtxdWV1ZTogUHV0IFBXUSBhbGxvY2F0aW9uIGFuZCBXUSBlbmxpc3RtZW50IGluIHRoZSBzYW1l
IGxvY2sNCj4gQy5TLg0KPiA+ID4gYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGANCj4gPiA+IGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGANCj4gPiA+DQo+ID4gPiBXZSBjb3VsZCBub3QgcmV2ZXJ0IHRo
ZSBwYXRjaCBiZWNhdXNlIG9mIG1lcmdlIGNvbmZsaWN0IGJ1dA0KPiA+ID4gcmVzZXR0aW5nIHRv
IHRoZQ0KPiA+IHBhcmVudCBvZiB0aGUgY29tbWl0IHNlZW1zIHRvIGZpeCB0aGUgaXNzdWUNCj4g
PiA+DQo+ID4gPiBDb3VsZCB5b3UgcGxlYXNlIGNoZWNrIHdoeSB0aGUgcGF0Y2ggY2F1c2VzIHRo
aXMgcmVncmVzc2lvbiBhbmQNCj4gPiA+IHByb3ZpZGUgYQ0KPiA+IGZpeCBpZiBuZWNlc3Nhcnk/
DQo+ID4NCj4gPg0KPiA+IEl0IGhhcyBiZWVuIGZpeGVkIGFuZCBpdCBpcyBpbiB3cS9mb3ItNi4x
MS4NCj4gPg0KPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvWnBBU05CTjBocFRWY2pF
LUBzbG0uZHVja2Rucy5vcmcvDQo+ID4NCg0KV2l0aCB0aGlzIHBhdGNoIHdlIGFyZSBydW5uaW5n
IGludG8gYW5vdGhlciByZWdyZXNzaW9uLg0KDQpgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgDQo8ND5b
ICAgIDQuMTcxMzcyXSBXQVJOSU5HOiBDUFU6IDExIFBJRDogMjgzIGF0IGtlcm5lbC9jcHUuYzo1
MjcgbG9ja2RlcF9hc3NlcnRfY3B1c19oZWxkLnBhcnQuMCsweDI0LzB4MzANCjw0PlsgICAgNC4x
NzEzNzddIE1vZHVsZXMgbGlua2VkIGluOiBrdm1faW50ZWwoKykgbWVpX2hkY3AgbWVpX3B4cCBy
ODE1MigrKSBtaWkgd21pX2Jtb2Yga3ZtIHI4MTY5IHZpZGVvIGNyY3QxMGRpZl9wY2xtdWwgY3Jj
MzJfcGNsbXVsIGdoYXNoX2NsbXVsbmlfaW50ZWwgcmVhbHRlayBpMmNfaTgwMSBtZWlfbWUgaTJj
X211eCBtZWkgaW50ZWxfbHBzc19wY2koKykgaTJjX3NtYnVzIHdtaSBidHVzYiBidHJ0bCBidGlu
dGVsIGJ0YmNtIGJsdWV0b290aA0KPDQ+WyAgICA0LjE3MTM4NV0gQ1BVOiAxMSBVSUQ6IDAgUElE
OiAyODMgQ29tbTogc3lzdGVtZC11ZGV2ZCBUYWludGVkOiBHICAgICAgICBXICAgICAgICAgIDYu
MTAuMC1uZXh0LTIwMjQwNzE1LW5leHQtMjAyNDA3MTUtZzkxZTNiMjRlYjdkMisgIzENCjw0Plsg
ICAgNC4xNzEzODddIFRhaW50ZWQ6IFtXXT1XQVJODQo8ND5bICAgIDQuMTcxMzg3XSBIYXJkd2Fy
ZSBuYW1lOiBBU1VTIFN5c3RlbSBQcm9kdWN0IE5hbWUvUFJJTUUgWjc5MC1QIFdJRkksIEJJT1Mg
MDgxMiAwMi8yNC8yMDIzDQo8ND5bICAgIDQuMTcxMzg4XSBSSVA6IDAwMTA6bG9ja2RlcF9hc3Nl
cnRfY3B1c19oZWxkLnBhcnQuMCsweDI0LzB4MzANCmBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGANCg0K
UGxlYXNlIGZpbmQgdGhlIGZ1bGwgbG9ncyBoZXJlLg0KDQpodHRwczovL2dmeC1jaS5pZ2suaW50
ZWwuY29tL3RyZWUvbGludXgtbmV4dC9uZXh0LTIwMjQwNzE1L2JhdC1ycGxzLTQvYm9vdDAudHh0
DQoNClRoZSBpc3N1ZSB3YXMgYmlzZWN0ZWQgdG8gdGhlIGNvbW1pdCB5b3UgaGF2ZSBtZW50aW9u
ZWQgYWJvdmUuDQoNClJldmVydGluZyB0aGUgcGF0Y2ggcmVzb2x2ZXMgdGhlIGlzc3VlLg0KDQpB
cmUgeW91IGFscmVhZHkgbG9va2luZyBpbnRvIGl0Pw0KDQpSZWdhcmRzDQoNCkNoYWl0YW55YQ0K
PiANCj4gVGhhbmsgeW91IExhaSBmb3IgeW91ciByZXNwb25zZS4NCj4gDQo+IFJlZ2FyZHMNCj4g
DQo+IENoYWl0YW55YQ0KPiANCj4gPiBUaGFua3MNCj4gPiBMYWkNCg==
