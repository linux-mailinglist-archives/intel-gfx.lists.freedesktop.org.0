Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DFCAB9BCF
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 14:18:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F84E10EA7D;
	Fri, 16 May 2025 12:18:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D/9cdFVs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C42910EA7D;
 Fri, 16 May 2025 12:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747397900; x=1778933900;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mXAgdckDEj5Kh6ucB5VsXcE1dkm1iRBrZafAHcBTNNw=;
 b=D/9cdFVsvV8wpkG1K0Fsv1LYg7cZ3uhEgznxWKLEd6KscX1mk2Qd+t08
 pEPgR7GQ6dMoQD45KANr9C3C7jKfwujxkQQUQ9jL5z2t1MGuFd3dDcV3I
 oi7bzFRr5SFT2YuK5tdFLj9/uxI5CK9z4MdW9FTgqftwOTWjY6UcXdHNV
 OIYlqLnIwZxmZl95XTBdPwIq33BPSSClC8urcblZMVTYYs+JPJuhb14GE
 TrQAGngCMQjf4xgE1jZtJFrp/J37Mu0WHlC+zQS8xoWiHgO4BPwwtLx15
 5HpTNgFoNfUH7P78q66lZtt7UYV82eL4o5cslUmiGoihirJ3bcPvddSxT A==;
X-CSE-ConnectionGUID: MKXh2fYwRwO5mG0/PRbTKw==
X-CSE-MsgGUID: wh3WgSGDQcCYr+XSP774YA==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="66920119"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="66920119"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 05:18:19 -0700
X-CSE-ConnectionGUID: qmOWdgcuSRGvHsw0+zVgBg==
X-CSE-MsgGUID: GcdPAZ7/T86XlFwVpTtmhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="138577680"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 05:18:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 16 May 2025 05:18:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 16 May 2025 05:18:18 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 16 May 2025 05:18:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L9lGgEsvIJt6LLow+J4hHDHSawWJE8UabGiKAOXLC/XqtdZY+++EpmKiMS2ELmMf+elNWCx7EZwaDiV5ZW5EnxCBua8vPB9pMD1ShJDCkgIMO0FHysIuQ4gHfIOQYwYj4waaMVw+uaNQAwQikQx9fkRD+KYekb/n0ee4EU4sovff1iwUdcLx5Mv3wOIK18UurNLs9kyN9sGdbTiB3V6dcDakf3QXg8IQsYY47t43dHWoZkCyQ2AuBYwclZGBduY64xN7CwRCCD5oPTZX2Hl+K9Ityo4w/8jPW45kE1AZMoxEMRptS43xKKfP3dWiWhx5h6jgBbR1TvPUcfg3Yr51aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mXAgdckDEj5Kh6ucB5VsXcE1dkm1iRBrZafAHcBTNNw=;
 b=o16xKqijViJaIGO4ZztNGcmqBXd7OmRQ4PeonxHcD1gnDYjhqv+/FrG/CeT2YyS596QyvYgWEJDz+L3rJ6XgJ5kEAro42/+R4KBqUtXIvH+nF25tb3PBtNeBIs2LiLwU8FU3WeKNL7d0Iz/3xoTk0IzVKL5Zqy2MV88tTuHFkUxcQytYnJfG059CCiv6DcPnsCQ/PWNB3627YOvoUkadvz5eSt9iqHEVHx6JTKpftBUniVKxqlJ4KEe9oEAH677qqZn5sH+63YffNQhW0g7H68gGXepm2R/zemaRXLPpTdes+DLxJ+m3XZa3PZpgoSfvcrr9GxA2hY/UWa6/chTW6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by BL1PR11MB5977.namprd11.prod.outlook.com (2603:10b6:208:384::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.33; Fri, 16 May
 2025 12:17:46 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8699.022; Fri, 16 May 2025
 12:17:46 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2] drm/i915/psr: Do not read PSR2_SU_STATUS on AlderLake
 and onwards
Thread-Topic: [PATCH v2] drm/i915/psr: Do not read PSR2_SU_STATUS on AlderLake
 and onwards
Thread-Index: AQHbxiwXYGKGE9xEUkqd0v50+wNEVrPVLJPA
Date: Fri, 16 May 2025 12:17:46 +0000
Message-ID: <MW4PR11MB7054E6900C106AB8024380E1EF93A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250516063019.2126702-1-jouni.hogander@intel.com>
In-Reply-To: <20250516063019.2126702-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|BL1PR11MB5977:EE_
x-ms-office365-filtering-correlation-id: 843a8b25-c230-454a-f949-08dd9473aac5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?WGFzRE95dnFnZnFnQ3hwZ1IxWU9KYnROdGJtSUR6UmV3Y1c2WUxXdEpPVWIw?=
 =?utf-8?B?K0NKU0tEclhXR2tpdktJOC9aR0tZV1BicEl1NWVvYUE1T1A4blhHd2JGYkU1?=
 =?utf-8?B?WWRxWEIyZ2RmdjkxY3UwZWVZV0lwRC9vY3ZSVFhpYmYvQXNOdFNVejRuaHIr?=
 =?utf-8?B?OHM1VHJiRC9TMzZIQXQvd05ETmZGb29uL08rM1A4bWU4Wlo4UTNySkNxa2ly?=
 =?utf-8?B?VUl2Z2cvdXAwaEFxckpRTUx6cHJObk9NQ3lINTZwNWpTWEswUVVuTU1WbWI4?=
 =?utf-8?B?c3Q3OVZWL0RFUzRFSEhoQkZwTy9vUlcrRHR6b3AvNTdPOUthbGdONVAxRjB2?=
 =?utf-8?B?OEdNQ0FtRDVJL04rc2hRSFl3MFk0aG4zZmwveElPajJ4ME5xZURjK1R3NDF0?=
 =?utf-8?B?SkJvbSt4dDJpT0ozR3hKZWJ2Z0NUSngwUEFpSmFiU2dKalVsa00wdnVQUGUw?=
 =?utf-8?B?ZG1VUmlBZlFxYjg2VmZPTmZZN25iMlZjb3hqeHN4TG1WVXRtLy9xZHZPT3pV?=
 =?utf-8?B?cjE3cEhTMlFLUzAzeDNNZ0RtNGN1bVUycGZGbVAwSUVBV1VMRjhzbU12TjZS?=
 =?utf-8?B?SHhVR3F3dlZ1dWJSZU1uY1pRQ2FCc0ZGNDRMNnl4bHRHQ09UUG1GM1E0NTRu?=
 =?utf-8?B?bXAwR2o0YUh4d0dOUXhQR2xFSFREeG5DL1Y4K2ZDb1BtTzA0QkRJSlhZencz?=
 =?utf-8?B?QSszZTBjY2ZKckJxeDNVZnQ1V1A3ZDg2OWw0dHkyZm5GZm8yVmgzUlVaV3RZ?=
 =?utf-8?B?cm9LR04zR25qSlhZV3ZOZHRhbWpXU0I3K2txWENyL09hUVgxbENmNmNHVGRX?=
 =?utf-8?B?L2RvOGNTdE51MXhzZCtTVUdOb1R2ZXZNWEJUWFpYUFdjRHFGQjF5NDVXNTk2?=
 =?utf-8?B?R3lhaDAxRHVDOUZYOGRnZ09ZTm9kajRhK3VidXpYUGF2MzFORzFEWlprUk5r?=
 =?utf-8?B?c0hXOFplUUNKM1lkWTFZSHBhc24xcFA0dlpQOFlYb2ZZbE9BNk5nWmw3U0xZ?=
 =?utf-8?B?ZGpSOU90QllOWHJ1N0Rmc2c1ZGlqQUpna1JZeDVoNzlvVWJxd3lVdWk1VnJt?=
 =?utf-8?B?QXRhbER5ZzBqdlVQOFBKS0RRcG5VVUtxR1Z2MjhKc0M4WjVnc1kxL1NwTVh2?=
 =?utf-8?B?WmFoMFFJd1ZJYUR0aWsydUlvZmVFeGtJOXU4U0JFeDlENUNaOVhIc1dJM3Rn?=
 =?utf-8?B?YzNIYkVobTNFV2NnUndBMER6OUEvOEErN0E1aGVBSGR6aFE0a0lMbEFMaVMr?=
 =?utf-8?B?cWJZK2o1aGRtYUZCZ0dsUWRHYytuNVFLU2VrL084MWhuREd6Zis1aTFFRURM?=
 =?utf-8?B?YzQxNFYxYzVFWEtCd3lNMWVXdHFrUkVBdWUyODRXS2t4ZFA4eDhsbWIrb2VD?=
 =?utf-8?B?MVNQd2hYSnB1SSthS0NmTzNXUzUyczZ4UDdMZFZvV29uZDVlZFFqcTVmaEpz?=
 =?utf-8?B?TTRSYnhGOTZnUTZvUmxWOUhSRHhhcjFJd3h4ZGVWTGFLbGovUlpGMXExcTFX?=
 =?utf-8?B?SkRlQktlS2JsOVMzOXpIOXQxT1NCVEpMQkN3WHVxWDVkWGpRYW1FLy9IaFFl?=
 =?utf-8?B?N2tVQkdaUXhLQWowTUNpVmNVSjd3cFppdmNJd3pXWHVZNGkrbHBsUDZETS91?=
 =?utf-8?B?L2dMWDNiQ0V2ZWdSS1FubkNQeWpkdEVNdkwyUURTcDdVNk9oRlI0dis4V1Ax?=
 =?utf-8?B?UXk0bitidUsvM2dYbXVPYy9SeGxFUWh3ZmlrUklTWVFENXZTbGJWZ01RTHo1?=
 =?utf-8?B?U3o2ZER2M2krWjlFMk9UeHVXQnNHSkxhcWZzbWdYbEM1LzF5WnVZQlJpYkFQ?=
 =?utf-8?B?alNDMUU2YTQzZkc3b0FFNGpLYnF5bHM1R0FZdzhreXRMY295bmNzU1lNTjFa?=
 =?utf-8?B?T2NDY0JlUEFZY1ZabW15MmhSMXlsMGFFUDVPU3BOMFZuY1RvV1JKV20wU3ho?=
 =?utf-8?B?Q1BIcEJDdGxZOTZRRUVST2ZnVjUzR0w5SHRUa0g4WUN0b0JyYlNtVXg4TDdh?=
 =?utf-8?Q?1Th1M+bhFKGJQ4eSJ59XQZ5kASQrF8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MlZvNXE0Mm1sMTF2cllMblhaSnFvYUMwdU5ORWhrSVpoODN0dWE3ZFlObFJk?=
 =?utf-8?B?cHpmeWdFbng5ajVRNUlNRXFrejVIRFdjNmVEWWxuQWJWU25vdnozM2Yyanp5?=
 =?utf-8?B?aE5keTRhM0c0Y0tVRCs5cDhrK2VpU1NPeVA4b24xVUszWENnQk91Y1hQcXBD?=
 =?utf-8?B?b29QbmtYMi9tV3BxSVQyZDFrcXB2VS8zbkFYdUphSnVEejczZk1PQ2pLZlhD?=
 =?utf-8?B?ZmorUkFTWGc0NTZGNUdkRW5PanBjaGY5eUhiaVdVMzJPcElUekhuUktkU204?=
 =?utf-8?B?YzBnZU10OE44MTcwc1FRNE5qYSs1V29NTTh3cEt2Z1ZkbFRMeFQxNS92VXMw?=
 =?utf-8?B?Nm01TEEydUFRc0Y4cElhSWJDMkg4ZldpbDhZUFI2LzdNY1NaUlNWUDVTTVF4?=
 =?utf-8?B?NFpmVFBwYmJ3aldlbm9ZQmVaTmlYWXRiS0I3YnEvbjRSYUJYWGx1MmcwTnNC?=
 =?utf-8?B?dnl6Ym5aWEp4NWtyTytkMGVNeG5hRFVObXpsTWRZQ29BNTVtL2xpbmd3d1Bm?=
 =?utf-8?B?MkpqNWVUdERvS0NONUJOWFI2dGkwUTlMSlE3YUF1MHZ5eDVpL0xMeEV2NFgx?=
 =?utf-8?B?Y1BHOVl0NEVUdWNuWU5ScThqVWVXb3FHUnlXZWQvWEJrYWdpZS9CZDdsWEQw?=
 =?utf-8?B?emg1SVdxVnkzOFRvT1ova3lZRE9kRW5EOEx5c3lNNjR6RmdIazVGYzZvdUJy?=
 =?utf-8?B?UkxoWExZd2hQK0xrQTNmblhONmVPbHQrMDBQdFA4NmlmL2x2Y2kxaThiLzZt?=
 =?utf-8?B?alVhbWIwMStXL2pOOHpWV3RjRGdXU0diOFVMa3dBWWhHNDZXQTRUeUxTSU5y?=
 =?utf-8?B?blk4Yzd6eG56dm9Bd2VlSVpDUEg4QmxSMU9TdTM1MzliVmVwWFpKZm1WVFla?=
 =?utf-8?B?MnpXdUhUTHNzaHd2N0FmekhZQ3B0YS9FazgvWTJaYnkvVnM4MHR5aXpDbnpO?=
 =?utf-8?B?REpjS255YlkvUkhaenFWYjNxcEJNQm9JMkdMY0w4NDhpRktRQUdibmRFcmd1?=
 =?utf-8?B?cDZNRWhWNlVjZ3NJM01tOVBTQzJMVUNIWDdzaTlCYkVpSjhvSWZXdjdBK1hF?=
 =?utf-8?B?dlhqTks2TkJqTm1POEJRcEhCdi85VmVqWUxIZFUxbFZqZ2VnbXFQcGI5YTc1?=
 =?utf-8?B?Ui9ZMVBISkl5NmpXdmpuOFdrVkdBTGtFU0hUeEgycVpYekJMVXkrRDFOdkpQ?=
 =?utf-8?B?NFhXK1NiRUx5VHJnN2grUUZMMHY3dkYxOUVUbFZ1UjRDbThoNGhaTE0yak10?=
 =?utf-8?B?UGhYcmRXMW0wUnBjK2J0OWtKMGlXODVvS0pKZ1NnTDUwTkJTcDVNV2RSdUlH?=
 =?utf-8?B?dXNhTnlCNTB6UFZFMmcxQnhmU2I3eTdhN1dIT29YcHRjMVRlRFdpZG91enpy?=
 =?utf-8?B?OCs3TW9HRVlybjFHRzBiT3Q3ZSs1U2h4QTZOTnRoMmpzNUoyMlZOYVpxWC9S?=
 =?utf-8?B?QWczWjRrb1BaYmF4c25wdkU0RzhER2djaW90YTB6eUFSem81emZVcEp0eUNC?=
 =?utf-8?B?QjdlQ0srUmhXMWlvZUFDeGlEcnUyYnF3UlZ2anhhVS94K3NhNTJiUSt1bW1U?=
 =?utf-8?B?YVlTZnd0V0lNZy9CMUJOZmRxcXVIa2grSEliMlNCNmxIcFF0Y2FUa0xiVkI0?=
 =?utf-8?B?enozZ0dDWG1JajdKTXhaOXJncWpQTytKWUxrZEZ0MkdERmlaRjA4Q2tHZFpI?=
 =?utf-8?B?eEpIdnRpRzg4S2hCeFd3S3RPRVpGVHNWaGtVRUtteE5FdnlxTW1KdTVMamZW?=
 =?utf-8?B?aDR4Wjd0SldrRHR4YXhkU3VTQStFYytQV3hNUlRUL05oT0MvNmo0UjB1K3Mv?=
 =?utf-8?B?cmNRWFNuNktwa0NucUxIYS9EaFBLTHFiWUJScC9QbXd3UDN6OW85L2oycU91?=
 =?utf-8?B?MVZhMjQ4N1RvdkNhaUtmaDU0MURvM1hKcEZLV2sva0pjcllnSml5SUJwTFpL?=
 =?utf-8?B?YTlzckNPdDRlbUI0aXVPWlg2R0RKMFhZak5WUHNHUmRBbEttcEJDOC9ZVzZa?=
 =?utf-8?B?aFNpWlN2UVQyTmdoQlRaRkVtQ2FhTmlkdHE5TFdVR2RORjdtTWxkWkpTZ1Vs?=
 =?utf-8?B?TmdPZG1OLzBLeU1Vc2ExZ1NUNEU5QUxObEtQNGJBdW93dU1Eb3BBVWh1Z005?=
 =?utf-8?Q?bCYFDcI7vQYkBXsO5evhOomJv?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 843a8b25-c230-454a-f949-08dd9473aac5
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2025 12:17:46.3654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QQ8P0nFeZknCVF0xWLpcKNkbEHms/MM0kmjEf3RWHskeWmLUPEOzT1b7DYW6UAF/93beigQBZQNQkH1g/o8J8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5977
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCAxNiBNYXkgMjAyNSA5LjMw
DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gQ2M6IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29t
PjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6
IFtQQVRDSCB2Ml0gZHJtL2k5MTUvcHNyOiBEbyBub3QgcmVhZCBQU1IyX1NVX1NUQVRVUyBvbiBB
bGRlckxha2UgYW5kIG9ud2FyZHMNCj4gDQo+IEJzcGVjIGNvbW1lbnQgb24gUFNSMl9TVV9TVEFU
VVM6DQo+IA0KPiAiVGhpcyByZWdpc3RlciBoYXMgYmVlbiB0aWVkLW9mZiBzaW5jZSBERzIvQURM
LVAgKGl0IHJldHVybnMgemVyb3Mgb25seSkgYW5kIGl0IGhhcyBiZWVuIHJlbW92ZWQgb24gWGUy
X0xQRC4iDQo+IA0KPiB2MjogZml4IGludmVyc2VkIGxvZ2ljDQo+IA0KPiBCc3BlYzogNjk4ODkN
Cg0KSW5kZWVkLCB0aGUgbG9naWMgc2xpcHBlZCBpbnZlcnNlZC4NCg0KUmV2aWV3ZWQtYnk6IE1p
a2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDM0ICsrKysrKysrKysrKysrLS0t
LS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGlu
ZGV4IDQzMGFkNGVmNzE0Ni4uY2Q4MzNiNjNlYTZiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTQwMjEsMjQgKzQwMjEsMzAgQEAgc3RhdGlj
IGludCBpbnRlbF9wc3Jfc3RhdHVzKHN0cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCkNCj4gIAkJaW50IGZyYW1lOw0KPiANCj4gIAkJLyoNCj4gLQkJICogUmVhZGlu
ZyBhbGwgMyByZWdpc3RlcnMgYmVmb3JlIGhhbmQgdG8gbWluaW1pemUgY3Jvc3NpbmcgYQ0KPiAt
CQkgKiBmcmFtZSBib3VuZGFyeSBiZXR3ZWVuIHJlZ2lzdGVyIHJlYWRzDQo+ICsJCSAqIFBTUjJf
U1VfU1RBVFVTIHJlZ2lzdGVyIGhhcyBiZWVuIHRpZWQtb2ZmIHNpbmNlIERHMi9BREwtUA0KPiAr
CQkgKiAoaXQgcmV0dXJucyB6ZXJvcyBvbmx5KSBhbmQgaXQgaGFzIGJlZW4gcmVtb3ZlZCBvbiBY
ZTJfTFBELg0KPiAgCQkgKi8NCj4gLQkJZm9yIChmcmFtZSA9IDA7IGZyYW1lIDwgUFNSMl9TVV9T
VEFUVVNfRlJBTUVTOyBmcmFtZSArPSAzKSB7DQo+IC0JCQl2YWwgPSBpbnRlbF9kZV9yZWFkKGRp
c3BsYXksDQo+IC0JCQkJCSAgICBQU1IyX1NVX1NUQVRVUyhkaXNwbGF5LCBjcHVfdHJhbnNjb2Rl
ciwgZnJhbWUpKTsNCj4gLQkJCXN1X2ZyYW1lc192YWxbZnJhbWUgLyAzXSA9IHZhbDsNCj4gLQkJ
fQ0KPiArCQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAxMykgew0KPiArCQkJLyoNCj4gKwkJ
CSAqIFJlYWRpbmcgYWxsIDMgcmVnaXN0ZXJzIGJlZm9yZSBoYW5kIHRvIG1pbmltaXplIGNyb3Nz
aW5nIGENCj4gKwkJCSAqIGZyYW1lIGJvdW5kYXJ5IGJldHdlZW4gcmVnaXN0ZXIgcmVhZHMNCj4g
KwkJCSAqLw0KPiArCQkJZm9yIChmcmFtZSA9IDA7IGZyYW1lIDwgUFNSMl9TVV9TVEFUVVNfRlJB
TUVTOyBmcmFtZSArPSAzKSB7DQo+ICsJCQkJdmFsID0gaW50ZWxfZGVfcmVhZChkaXNwbGF5LA0K
PiArCQkJCQkJICAgIFBTUjJfU1VfU1RBVFVTKGRpc3BsYXksIGNwdV90cmFuc2NvZGVyLCBmcmFt
ZSkpOw0KPiArCQkJCXN1X2ZyYW1lc192YWxbZnJhbWUgLyAzXSA9IHZhbDsNCj4gKwkJCX0NCj4g
DQo+IC0JCXNlcV9wdXRzKG0sICJGcmFtZTpcdFBTUjIgU1UgYmxvY2tzOlxuIik7DQo+ICsJCQlz
ZXFfcHV0cyhtLCAiRnJhbWU6XHRQU1IyIFNVIGJsb2NrczpcbiIpOw0KPiANCj4gLQkJZm9yIChm
cmFtZSA9IDA7IGZyYW1lIDwgUFNSMl9TVV9TVEFUVVNfRlJBTUVTOyBmcmFtZSsrKSB7DQo+IC0J
CQl1MzIgc3VfYmxvY2tzOw0KPiArCQkJZm9yIChmcmFtZSA9IDA7IGZyYW1lIDwgUFNSMl9TVV9T
VEFUVVNfRlJBTUVTOyBmcmFtZSsrKSB7DQo+ICsJCQkJdTMyIHN1X2Jsb2NrczsNCj4gDQo+IC0J
CQlzdV9ibG9ja3MgPSBzdV9mcmFtZXNfdmFsW2ZyYW1lIC8gM10gJg0KPiAtCQkJCSAgICBQU1Iy
X1NVX1NUQVRVU19NQVNLKGZyYW1lKTsNCj4gLQkJCXN1X2Jsb2NrcyA9IHN1X2Jsb2NrcyA+PiBQ
U1IyX1NVX1NUQVRVU19TSElGVChmcmFtZSk7DQo+IC0JCQlzZXFfcHJpbnRmKG0sICIlZFx0JWRc
biIsIGZyYW1lLCBzdV9ibG9ja3MpOw0KPiArCQkJCXN1X2Jsb2NrcyA9IHN1X2ZyYW1lc192YWxb
ZnJhbWUgLyAzXSAmDQo+ICsJCQkJCVBTUjJfU1VfU1RBVFVTX01BU0soZnJhbWUpOw0KPiArCQkJ
CXN1X2Jsb2NrcyA9IHN1X2Jsb2NrcyA+PiBQU1IyX1NVX1NUQVRVU19TSElGVChmcmFtZSk7DQo+
ICsJCQkJc2VxX3ByaW50ZihtLCAiJWRcdCVkXG4iLCBmcmFtZSwgc3VfYmxvY2tzKTsNCj4gKwkJ
CX0NCj4gIAkJfQ0KPiANCj4gIAkJc2VxX3ByaW50ZihtLCAiUFNSMiBzZWxlY3RpdmUgZmV0Y2g6
ICVzXG4iLA0KPiAtLQ0KPiAyLjQzLjANCg0K
