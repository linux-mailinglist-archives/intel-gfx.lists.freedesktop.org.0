Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 530DEB2D9F0
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 12:21:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D86D410E6E6;
	Wed, 20 Aug 2025 10:21:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OfjlMMmx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE70A10E6E6;
 Wed, 20 Aug 2025 10:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755685269; x=1787221269;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WThU80ifDhZDeaZFborw9aFvOpSGKHvy5lU5xLRXPas=;
 b=OfjlMMmxLwS2CTQE06o6eNTxFGt1C3JZ1/VDRcSR/ak5lD1E0ZzZMlxW
 9M8FDjMdwt8PZ92oDNZ/75BxPSx+Dd2WT0wWKuREbhoCzs/+v8j0OMxr4
 Xv4ep4jthfP+idLeasUdXlUGWU+ulZKO7+m1NZsLVS8nFw2sG1OEdw13F
 J6scA0yLv2M5v4B3C80rPfVMiwMI/rCjcT2l2Kt2qvtO7PFsbtfjqOmQz
 d6/HmuIBdfB6l+AdB1TbLnGxYFzXKcHhtSQEuz1+RubHEuSANNLdwEEXv
 OSB0Ic2gfGS7Nv/U87n9j2GVRT8ns1k3sGSNxRic1StXC1DuwZf/68/gE g==;
X-CSE-ConnectionGUID: GhMuiAabSJWBXTCV0hBPYA==
X-CSE-MsgGUID: 2I4G8o9BR72gx7xzU4aaMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="45520940"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="45520940"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 03:21:08 -0700
X-CSE-ConnectionGUID: +8pAIZENS7mivmc/MMFj1w==
X-CSE-MsgGUID: Kh0eAfezTfeSZy+CghR9xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="167716715"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 03:21:08 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 03:21:07 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 20 Aug 2025 03:21:07 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.40) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 03:21:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K2BW48lftytIz54mNhJNITFisvT754NiSOQDZl7H0uZXeCDSBNa0u47HqI+156z+8KpmtECQfq/Hr0zcVGqoFADsX/rZWaZ3whpkHFMJFUc+8jm5pv87Qr+JN1ep9Ja20UOabKn67167j8jUw/l7Yx/lnoEJBOxgKgUNGssZL1ZLShJVoX+Zf/UzG0sGLY4HQSTjKz/tUwvPGI8jFoIKnZGxqKtw7Gr9b3uwRPqGpWQL+LmIJAPgKjWyoqa03SczrszOhVz1HJc9DO7BK3FtqhbIXC2y/vernXVh00rbrlG2zK9hK9G1lJ4M2791v+u/Uuiw20+yV2ScRleRA7nXOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WThU80ifDhZDeaZFborw9aFvOpSGKHvy5lU5xLRXPas=;
 b=X/pIXMUqCKygqS38585V17Ib7gCV70hme3VtVDXNFp+UwJ0MB5lKMe0fAus1FDOSMkEWynNOONL/xlVYwHIvQy8rucjR1PTxI+Jv0Jgtu5wTFn3c278bDZ8QexDQwfP1E4u92AuADH4dqDRriTAKoKwQk9m/cYtr0O9ZwZq3+wU2gedN4h2D36C8MpkOMVi5T1HKAeg8jDck4mXQmQQd/anz2XbWNa0/Kjy4Gs6WyLnFLG/Ml6yjgJCv+fTFN/ASWgvFphuFQfIgChZfl7dEtDIVoD2hSo75n/F0bhhvw5b7MT7uyhSD6NxKoyRAIlrk3hBQfBpBllRQ3HGIdC1Ijg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH0PR11MB7587.namprd11.prod.outlook.com
 (2603:10b6:510:26d::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.25; Wed, 20 Aug
 2025 10:21:00 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%8]) with mapi id 15.20.9031.023; Wed, 20 Aug 2025
 10:21:00 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/psr: Do not activate disabled PSR on
 irq_aux_error
Thread-Topic: [PATCH 2/3] drm/i915/psr: Do not activate disabled PSR on
 irq_aux_error
Thread-Index: AQHcDcHzOlRMoyUXIEq5btBL3tcFJ7RrXKTQ
Date: Wed, 20 Aug 2025 10:21:00 +0000
Message-ID: <DS4PPF69154114F32FDA575A172D2416C1AEF33A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250815084534.1637030-1-jouni.hogander@intel.com>
 <20250815084534.1637030-3-jouni.hogander@intel.com>
In-Reply-To: <20250815084534.1637030-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH0PR11MB7587:EE_
x-ms-office365-filtering-correlation-id: 753cc9bb-39c6-41eb-8555-08dddfd3427e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?aHVmZnRHYzh3d1FteVkyT3cvK0p5a3pwdW9sTU9aUmpYNVFkRkhxejV1cWVu?=
 =?utf-8?B?Mm0zTm1TWnJhSk5FNEp1SklIekxlUFFlYUhQd3BiOVhZbEFpNWR1L2hTaFBQ?=
 =?utf-8?B?Z1BISGZHSEdaaUNWM2NwY0FwQ09wNG1QUlpmcUhGbVc1MmFWUmNRV05ZR3FP?=
 =?utf-8?B?RkJjc1BDbnU2ZjN4QkIrcUpUMmtVWXpqWjBHRzRoR2VUR1daeDk2WXNwcVVD?=
 =?utf-8?B?WXRLMGoyL1Z5TW9LUDJ5c1VIRndvTTFIcngreUFvYXNpR1ZSUU03VXNycEl0?=
 =?utf-8?B?N2trNzcra0t4RWcxYjdac3NreDdNQUN3NnNyVG8wTDFaK3VIbDRpMmJHbGRy?=
 =?utf-8?B?dmxLNVF5bDJaNDNBWlNLNHJhaHhvL29HR2EzVUVKeTBhalJ2NWY2UjhrbFZY?=
 =?utf-8?B?d0NHT0NHRm9kZGVKc3VMck1wM2ROL2VXbkVKWVN1SmFzSXlLU0lRMW5acWpS?=
 =?utf-8?B?dmI0Q2U2VHAzZ2sxeDA0QitkQXhneVhTZlkwNVlrRjZLUzRuN2tKUFVCVkc4?=
 =?utf-8?B?T2lRczlYWFR0ZVFTeEJhV0cvQ2h5TzlHNDZBNVlrK0lyaUVuamlkdUhlci9U?=
 =?utf-8?B?a0Y1ZFN1NUpyWnBXczB4akpaaWsxSzVyWjVGZEU2dXhKZURhbFdLY0t2TGNW?=
 =?utf-8?B?di9qVmJpT3FQaEdKWUd0Qmdhb1loYXBhMFdRRTFDUEIyVi9qUTk2a2pxbkVL?=
 =?utf-8?B?S3dzSnh0NEpOZmlEcms2NlM1ak12Wk1tZmgyWnNHMkUzcDdKbVVLM2VMYmNt?=
 =?utf-8?B?OWQzemd1aVFRR21TdUJ2cjRTV1dWSjZZbVlTcHcwS3NBQ3VHUEVzb014am41?=
 =?utf-8?B?cDdoOVhwQmQ5Uk1zVTRBMUpMM2xQckJZb2FsaktyYmFPUWpVQi90c1B2aVht?=
 =?utf-8?B?R0ZtRDJydi85V1lZU0JZS1BZWUlHSmFLTmpsbDdTOEkrNmxHSXFTbk1oVFZS?=
 =?utf-8?B?SS9CUUt0SGl5ZUU2ajg4eWVNVzRrK1ZFSnlmUnM2Uk5TRmZqS0oybEpOMVZ3?=
 =?utf-8?B?UFdIc1VsVlExeXRrOHBheVNUWURoMTRqWFNyMlVRUFVMOU1tNnA0ZnJlZlJO?=
 =?utf-8?B?THFlb0lENk9zRE9qVldXcG9UVkpXZzNtRmxOVElZY2tjM29HeU1EeWRyNjBB?=
 =?utf-8?B?U1JaTkRlMjRFdTNHNnlkMmNYNHV4U1c3Y29OMHJjZXNDcjIzaHpGVFM1VGVD?=
 =?utf-8?B?dmtLVkFCZXdxZGdrZTRPWC9sUVdEYlBYSEtuUWZ1NkhkMU1hdHpxVG1NdVB3?=
 =?utf-8?B?YkdFc01MZ3FObnloRjJ1bjdPZ3ZialRnallvVFFLeGdrZGtaM1FOQU9LYllv?=
 =?utf-8?B?enRhVGdoUFZmTVlSRk10bHlxdlMvaVFnTWJxT2hRajNIYmpQVmtZRjlHT3FW?=
 =?utf-8?B?M1VWT2x5N0ZXK0xNbTNXSXBTdFN4QUh0K0kvOUZjNmlrb1pCOHJ0ZFRJN0Q1?=
 =?utf-8?B?L0diUEdBajI3SmtoQmNNZGx5bVcxcEtROEg2bSsya0ZiY1hmQXVrR2xYSWtS?=
 =?utf-8?B?VEdDWVBVd0dvV0V2dVR1SFkycyt2MzVzVDA2Rm4wL0tiUkxzMndFR2FvSUdK?=
 =?utf-8?B?NXVEN2s5V0dsNjRjUWcycy9KT3hvWjEyNU1UZWhnampaNktjMVluM1ByYTB5?=
 =?utf-8?B?bHpNaEMxdWRLbU5YU05rdllva2RDRVBhT3JuOWcwSlNhdDlBNlhZK3ZwMTEx?=
 =?utf-8?B?c0ltUFJqY2FLZWVVZXhXdmk5TXZlRm1MNDFhWWkwam1wWU1ZT1lvNWpkdk1r?=
 =?utf-8?B?eE1uREQ4VDZNWUlBdU1BbVFkaWRDYjhEMEMvQTNwMFJaNHZIWHJWbEN4eTJ1?=
 =?utf-8?B?L2JEV0V4QWdZU2UwbzFRelVtcUlsMi9EUEJSLzlCSnZBNEc3UElJMlRPWWt5?=
 =?utf-8?B?WlRjRGpwZHhnVzgwanFJODJMSURyRUNhaFhwQ25iVllwQVRleEFvY0xQdnhN?=
 =?utf-8?B?OHZvRHcxNjRzb3ExdHd0OTRpTlNJeFRPK0x6Q1VYZU8rVUFOcDc3RndwU1Zi?=
 =?utf-8?Q?oIV5V9inAR8hE6PcRfjf3QzjYnv03o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RkY3clZRSGhFZlR0eHZVYUVYOUF6ZXZrdS9hQUk4ZWtLUFJpRDh4SVB4U2oz?=
 =?utf-8?B?bXlUS0RQNHNoYW5ZeW4wck5BNWU0R2JtdVh5cDI0NDE4aFZpaUt4amljT1RK?=
 =?utf-8?B?VVMwS29OdENtZFBUSlZzSU9lTGNQeG03TUUyT1puVWVKVWJYZkNndmJPeklm?=
 =?utf-8?B?dUZXRlR4RHlpOGJTNXZlc3lqRWNlZnJiNGFuRmFDN09kWUhWM1VIbDdtWHB4?=
 =?utf-8?B?NWEzV2tkN2VEUUhad0ZqcVZVZGNuY25SeEEyREs0ZG4zbkRnbHhtUmk3d1Vu?=
 =?utf-8?B?YlBKUHhLeGpmeHJFMVY1YlRJWFVJRnZ6d0NXaTFEditSWGNzQjM3amJDajlT?=
 =?utf-8?B?b2RVRS9xVklwd3FCUDZ3L3VhaU95MEJPc0NZSGdpbnFDNU43cTN3ajB2YXh0?=
 =?utf-8?B?QnRBSWduZ3BWOE9yaURDWW51UlpwSDI4ZEdIVGkvTk5rcnE4T1JxVjdySnZP?=
 =?utf-8?B?U2IxczdLSytzVkl1bkoveEh0TEk2Qkg2QUU3VFp5RXdjaDhhME9tSkluSlRX?=
 =?utf-8?B?d3VFSDhKSnR5empGRG1jYlVWSjZ3OUNxTUl1aDZJbWRiaWZaK2VJM1RLV0tU?=
 =?utf-8?B?RFl4aVNhdzlzaVpleWlCbWxQa0dyZmdwNyt3L3diTmVKeDc2Y3UvZ0VBOWRS?=
 =?utf-8?B?Tjg5QVB5REhCTExtMXF5NEJkeHE0L2FieC81RmtEeXNsa1dPcVZNZFBIYSs5?=
 =?utf-8?B?dUVqb2ZRSCt1SEdreEluNW1Id1JSSHJyanpUQ1ZGNEZlaEFEc2k4RkNuMGFm?=
 =?utf-8?B?WkRPeE13aU43R1NDQlZvUmNnYTVWaWc0NkphM2x5TjBKSjgvWXU0TnlUNzJU?=
 =?utf-8?B?UlVLcG01djRsZW04SGR4QS80ZXdGNEVvMWxyTExUMzJLNDRaOS9EY3NHWmho?=
 =?utf-8?B?dE51NlVOODVTYjlGNk9YTGRoYmx2RFE2VXYzYnV3SGxOWjA0L3p1N1dlZ05J?=
 =?utf-8?B?MFZQTkFKSlhyb1VhUk1VMEM5SDdyOXE4SFUvV3NIQ3hCams0ZTYwa3JRKzEr?=
 =?utf-8?B?VENzNUk4RVBYSGYySnRRaXNhSnM4aFVNc1JKTVhMb0llREZDbXEwV09IcDVR?=
 =?utf-8?B?L3BKZm53ZUtockE2RDlRWTk3TSsrVlhaazgvQ2tsTkhlNFFQSCt0emNKVmFn?=
 =?utf-8?B?b1dYelEzZTV6SHdKbkNEKytWZjR5QThPWk80YVFoaXJ0VG1XL3dtbVJhTWp4?=
 =?utf-8?B?Q05saE4yS1ZKeEZ2RFNmYnFyTWJ6UTl4M0t4ajEraFpSc1VWWjB5ZXFiZlFu?=
 =?utf-8?B?MkhtSUovbEoyOEw5Q3hsMDZzeW1VVkw4elljdnJ2cmlmTWQ0ODZ5T1JjRG1G?=
 =?utf-8?B?KzhmeklFeE1Fb05QQUx4cVFoeE50TXA5UVVYNHhWaGgwanRvSzNXYkdEeVVa?=
 =?utf-8?B?Zjg5OUxDbXVzWjVOVG5uaVdWZEN5RzNCaEtCUENuUDNtbGJPZEdnRmJCcmZz?=
 =?utf-8?B?UXgxMnR3aW4wa1lrNThVT0Z2c3JDY21WTnFFTlpmcWd6OHNvRVN3TVRXR1oz?=
 =?utf-8?B?YWQ3N1pCdkwrb1g5NFJZbm8zSUJGYzFIMXpFSWt4T0FjWkJtSDJVSDMzQ1VU?=
 =?utf-8?B?c1JaMXdGbi9IcmdGODJVb0c1dEVrVVp2N2I3dXFBN3NGbGtZT24rZ3Z2cTds?=
 =?utf-8?B?enlMb2tTV0NHUngxVVhDS3hQQnpMWVhSL3RoR0N4SXhzUkx5K2hUN2tuazdH?=
 =?utf-8?B?dWU4VFRVVitQQWZoU2JvUjNuemlxcitHOHZhR2RlVWZtcU1NMW1mUXIxNzFU?=
 =?utf-8?B?MmlBUTlpUkh4bi9GK1BmdURFV1YyRzVDcFd3R2ptVkJtMXRTaFIwSy81aTBD?=
 =?utf-8?B?UG5ocUtKN2JOWXpSMnd2K3RWcHE0R2JCR21vU3ZnbThDWEljcXp0d0dhaE9R?=
 =?utf-8?B?N2FOaDlmVm5DL1lrQVpHZmxMRDJEZTJDbEE0WHdqanowTitGbTUzeXRvdWNR?=
 =?utf-8?B?YzRMSjdoSnRmRDBQUWhoS2xEbnN6NGlSYjFYTDNhNllVK2w3cklqTmxiOFZQ?=
 =?utf-8?B?T2l0UURTcUJoSHZOaFFlZEVmOGxZWGMzZWVhMjZMUkVGQmJzUzU3UDM1aGkw?=
 =?utf-8?B?aDV5VXVQOUlENy9CejF3V1VqRkFNSmdxNFpSME4vWlNpWVR0cWdHN01sV0FK?=
 =?utf-8?Q?Ov//vYqmebXxptT8/lZ30xUIu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 753cc9bb-39c6-41eb-8555-08dddfd3427e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2025 10:21:00.3003 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XbIiNnelI8n4j0DwotOyByAQSWcD3PlhOOuoPUUsK7zxwhDEDrko5dSQ6cJz2/5h4ktLNPULGNvxgaCCxjrc2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7587
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pIEjDtmdh
bmRlcg0KPiBTZW50OiBGcmlkYXksIDE1IEF1Z3VzdCAyMDI1IDExLjQ2DQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJq
ZWN0OiBbUEFUQ0ggMi8zXSBkcm0vaTkxNS9wc3I6IERvIG5vdCBhY3RpdmF0ZSBkaXNhYmxlZCBQ
U1Igb24gaXJxX2F1eF9lcnJvcg0KPiANCj4gQ3VycmVudGx5IGludGVsX3Bzcl93b3JrIGlzIGNv
bnRpbnVpbmcgdG8gYWN0aXZhdGlvbiBvZiBQU1Igd2hpY2ggd2FzIGp1c3QgZGlzYWJsZWQgd2hl
biBpcnFfYXV4X2Vycm9yID09IHRydWUuDQo+IA0KPiBGaXggdGhpcyBieSBza2lwcGluZyBldmVy
eXRoaW5nIGVsc2UgdGhhbiBpbnRlbF9wc3JfaGFuZGxlX2lycSBpbiBpbnRlbF9wc3Jfd29yayB3
aGVuIGlycV9hdXhfZXJyb3IgPT0gdHJ1ZS4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9s
YSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdh
bmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA0ICsrKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCAyMjZkNGQxYzdjODIuLjM5MzBkMjhlMzQ4NiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0z
MjA5LDggKzMyMDksMTAgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX3dvcmsoc3RydWN0IHdvcmtf
c3RydWN0ICp3b3JrKQ0KPiAgCWlmICghaW50ZWxfZHAtPnBzci5lbmFibGVkKQ0KPiAgCQlnb3Rv
IHVubG9jazsNCj4gDQo+IC0JaWYgKFJFQURfT05DRShpbnRlbF9kcC0+cHNyLmlycV9hdXhfZXJy
b3IpKQ0KPiArCWlmIChSRUFEX09OQ0UoaW50ZWxfZHAtPnBzci5pcnFfYXV4X2Vycm9yKSkgew0K
PiAgCQlpbnRlbF9wc3JfaGFuZGxlX2lycShpbnRlbF9kcCk7DQo+ICsJCWdvdG8gdW5sb2NrOw0K
PiArCX0NCj4gDQo+ICAJLyoNCj4gIAkgKiBXZSBoYXZlIHRvIG1ha2Ugc3VyZSBQU1IgaXMgcmVh
ZHkgZm9yIHJlLWVuYWJsZQ0KPiAtLQ0KPiAyLjQzLjANCg0K
