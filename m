Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B7EA95132
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 14:44:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25EEC10E060;
	Mon, 21 Apr 2025 12:44:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c+MURNKA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF43F10E060;
 Mon, 21 Apr 2025 12:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745239473; x=1776775473;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uBw6ujTbtPUnCZviSyAUnnY/WLpBbb1/yqpZFUxvjUQ=;
 b=c+MURNKApbG2g5BYJo6vkY5wJ9w8o5czhXOqKiL2hH7aZzKNqMY0S18k
 dp2rBFaPGW+8lVAcutgnVMCN7DzAazHhFnzALIzJLRQ7cVmKYQ7duv7mP
 6C0hoREEgiF4SYWEc3ytyxG+fz0BPAUrjt8igde4N7FloPb9pXmi6Ck7c
 1p8fZmgibh9ojUY6jL+jyzfJsNlNgYimJQNFGyblZ+O+Ap2ZOLnSz0+Ov
 XSXCAGS/YRnR/m+s26qq2MlnRc35tCauDP57iUv9bhuJUCqBkS58hfc+Y
 2pKN0v2ZmSNu1gYYuIf8Y+SvUhSy+aEhf1eKXcFWAc2TiaObvHTrQy6t6 w==;
X-CSE-ConnectionGUID: 0sSryJLhRpOKQViCkS1gug==
X-CSE-MsgGUID: AnwamXHjQ4GxEbR2Kg3FKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="50569435"
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="50569435"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 05:44:33 -0700
X-CSE-ConnectionGUID: mGgJjYbtQ4KMLM7i6k4oqw==
X-CSE-MsgGUID: I0njFNKvQ8W2BwRql/ZVNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="154886042"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 05:44:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 21 Apr 2025 05:44:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 21 Apr 2025 05:44:31 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 21 Apr 2025 05:44:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eqsQCUzWCY9+u7MWygPzicxCyTOO+g1/B8uan4MqvTTys8qWm+PCDSTO6gzF1NT0wWNrBYrCI/ipCJd6pUZZw6Ax7lH3uJIII4W1OY83jmEifxymL1L8aGC2PYT22SqP6Qtr6Hc/K0+19ufF7zn+vwds37c1IVpoFx8WjJinoczBhYLw796jG58tjIBs6y6FgSMCu+AToreeHCw9nXPOhm+dwBTBg/UT45e8vylGXbEArhGF1mj8hCUobDUOzl7tQakN4ViVOC+8caTiNt/wvzMgp+gHj7Dt2kJCBqek4/VZ9+DRcvkUf2sIct4TM5yMNhUzliwh6PV/Rvarezy+RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uBw6ujTbtPUnCZviSyAUnnY/WLpBbb1/yqpZFUxvjUQ=;
 b=GFNxrer9MGe/Nzvx/PTWYZZYmwFrmyBl+KHd6/KJEkdpx/lCvIylIwf2uBny03mBKOQFtypM9FGa41Bz7ISfWALzypm2QTo1PJ6JSXD19ZeKTpOFqw+9vP7IgzCI9F/XPVRfY59/7M4Zq1jyoMbcAFYOhiBwmgyxCFRr4xFczZ9BoxQpOY1wa0L51YSPYqFTOtHPVt/EUyZfTAVsEdK7t5HIzeLSrjG1O0tcPkGssTWYQkZ37LSlr2iE50qi8Cynq5stqj+GD+Jn4PP9O6PDUXXKAYNDTWZePcGJEc0nAOd6qzWfGjrNcNv/2bie0ltIubMkOoF5Z4aNSPJ8bMwSDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH8PR11MB6855.namprd11.prod.outlook.com (2603:10b6:510:22c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.33; Mon, 21 Apr
 2025 12:44:28 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.8655.033; Mon, 21 Apr 2025
 12:44:28 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH 03/11] drm/i915/dsb: Extract intel_dsb_{head,tail}()
Thread-Topic: [PATCH 03/11] drm/i915/dsb: Extract intel_dsb_{head,tail}()
Thread-Index: AQHbqHeWRcJZNJAdI0+mSHJ/rqyLA7OuJR5w
Date: Mon, 21 Apr 2025 12:44:28 +0000
Message-ID: <PH7PR11MB59819CBCE2224D6CF435D589F9B82@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
 <20250408110022.1907802-4-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250408110022.1907802-4-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH8PR11MB6855:EE_
x-ms-office365-filtering-correlation-id: e8c0ee01-9df8-4351-cde6-08dd80d2416d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?TEpPNVRRaVRXeXMrWjRidkYrWnQrdFdLalg3YUdYSGVFcGdCRHBGc1dHeUcz?=
 =?utf-8?B?UU1wakZWS3hmZzRvZWN5SDBhd05aOHR4SzBVckNXSkJMWEdzVHBVRUFtVi9C?=
 =?utf-8?B?U01USjRJNEZ6ME44VkRIRlZtZzFKN2picFVDVDBkdmJlR0l3aUViKzJESW9S?=
 =?utf-8?B?NXJ3TmlNM2VGWWxzcFNNSUV1UlpJcFlEODQ1anZJZzBFY2pNUDlPNUtQVm1U?=
 =?utf-8?B?d2lJYnhRcFhVcjhZSExEUCt0S0Y3RGxWMDFHdVZWVElScFZ1ZnNFOWszdnBN?=
 =?utf-8?B?R2QvV0RmejZCTzg4Q2E5aFUvZnRuNE1UcFRTUG42NnpTVEg5TjdVK2VEUGts?=
 =?utf-8?B?cU9CVzlLUGpXd043RVpya0xlc2pHL09sdDQ5eEtWTTVFZlkxQ21oRERHSkRw?=
 =?utf-8?B?S0QycEhpRms0a25FaEorL1BZUGo0RDVXaXA3VFlZMTlmZitHaHVHUDNpSkJv?=
 =?utf-8?B?cWJtMlhXS0lMRDU0U0lZb21EWmVnNmZKWFFicTBpVEk2YmVGY3ZKK3QyeWY0?=
 =?utf-8?B?T1E3eTN3M1RCank1RWI4YzFJTnZ6SW1ZTUdhYm1vZmRBQ0doMHdMb1JDcHJD?=
 =?utf-8?B?aTdMdmlrWEJQREd3c0VJYzNtV2xDSUNLTSszMXV0NndRTkJXWTlpdFNLWndn?=
 =?utf-8?B?Vk5yRUI4SnpmSWlkYk5OSFIrZlk4TzByakFEUCtWeW1rQlR1N1dpTThaMCtD?=
 =?utf-8?B?eVRKc1BscFFyaUFCdWF3eUk1cEJ3Ry9rWXBMdE1qMFYvYnNNQzdZQTBwNFo2?=
 =?utf-8?B?QmMvTTdzV01adUo4RUx5endySUU4dDQ2bitLUURXaFE0S0JjUkcvZ09oVU9T?=
 =?utf-8?B?bGVTbVZwaWNPMEJwdE5UMkdaRHNTUFRJaTdBRXRRbGkvQlZNR1lqcmdlVVBr?=
 =?utf-8?B?czBwSlRWRDJPK2FjaHpRTEdGWU5idnlwOVoxV0c0MjF1all5NnpFZnNUekNP?=
 =?utf-8?B?eGx4UTRHYkZkT0hmN243c0JUc2FUZSsvWkZSMFlOM0VrbjN4WTZ6WUFHOVFj?=
 =?utf-8?B?em9MWGxiVTFSUFd2djg2RXRMeDdmOEFHbU1IUWZNS1V1elY5S3ZWWVpqSTk0?=
 =?utf-8?B?QlFRZ2haU2g2NmlIYm5nMFJodGhYTURiRStPZ2pSMzEyMTgvTmxxZHd1ODg0?=
 =?utf-8?B?MWJsbU9pMXFnM1pvbENTNlFRQnd5UTd4OFUwdWVNcTNkSlRXM1hYcVRxNmN3?=
 =?utf-8?B?cWdwaVYxNjdRTmFRVHA0R2YrYTJqcFhyaXVzK0RyblFobGpnU1JJT0FjSkdV?=
 =?utf-8?B?V2pDdzhzdWhoMEJQNVkwcHBjdUFUdCtUMVE2Ymo0YUlTNjVxNTJCK2lBeWNj?=
 =?utf-8?B?OHMzZDdoKzBBV0NJSTU3N2V4YVNGdWZnYS8zci9ZRiswbk1FRUluZ0xpMmFm?=
 =?utf-8?B?Z0NUcmFqdDdsdW14T2FEUkFQaEFkSzg1OFJudWVHUEphSjVvM2h0T3NZZmpI?=
 =?utf-8?B?S3ZqOHlDTGlicU9DTzFLQUo2L0ZiZ1ZWTGkxRk42U0kyWExUdDJwWTNKQmdE?=
 =?utf-8?B?cUpnRlZoWGZtejBjTWFqb2lFR3JjOW1MWFpKeE5xUDM0L1RlWEtOWGRFcUp0?=
 =?utf-8?B?TExLQjlpUW96YXZ4SFBXaVpsb3VTa3FJcVlpVVJYQzVDZW05eW5xQWplZXp6?=
 =?utf-8?B?UjVJZjNpRTVteXhyOTgzcTFoSHptdThNSzA2NW1lR2NpZXd6dDVNVlp4MGtk?=
 =?utf-8?B?WFZ2L0pmbUV3dG12VTFBWEo3RjRueFMvOXJsZThhMnZKSlRwQ1VDMmxLMExx?=
 =?utf-8?B?YVlCcDdSRWFhd1libG4yY2hxRURvd1BIbzg1Zk5PRGZmeWp0cURiUU1KVzgz?=
 =?utf-8?B?TUdzZEpVVGNGRDJHY0tlelFhYlgvOHRWRmR0dkt3Q2xON0dSZ2ROS1IyVFlG?=
 =?utf-8?B?SG9vK01hd1N2T3BWM3pKKzJNR3JROHdnVUE3NmJXTmZ1RSsxenltTzBUUEVH?=
 =?utf-8?B?T2ZMS3FCR2dzWUFvNnFrUTdqZFN3aGRxZkt3NmJzajNCUDFkNm9XemYrRlBZ?=
 =?utf-8?Q?bU+/e7JBnLRt9HILxHcNSJkbRaZDl0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NEhLSkJKRjgwOWUwT3MvUzIzZWxaN2ZaRVlpUGU2QmI1ZUlUaHpHMXBNQXpO?=
 =?utf-8?B?ZDhxS1VlMk9yaVFWZWNRb2txSk0vRCtSQzJQbHZhQjZTMTVZSDJXQS84RmpE?=
 =?utf-8?B?MjZOTHFINUFYbjhkSVRRUWdnSXVWMWFoUWR4Mml6S04yaVJWVmRFcHluMStU?=
 =?utf-8?B?d2Q0R0pHelVzdi9xbDY4U29qS0E0M2FFTlZ2M3BBZ3hJM3pZUGE1TnJHMFhi?=
 =?utf-8?B?WGQ5S0MrSjlpcy9ZWGpNMFVrS2RFamFoNnBWcXEya2FxdUNtUis3QjgzU0s2?=
 =?utf-8?B?ZjkwMGwrY1FCc3UyNzFUOXA3UEg1ZlBGT2NUR1NaemZ6eXF4T0RaVXpZOXdC?=
 =?utf-8?B?RWNzNWJZU1YzRkU5V3ZwRDJNMVEvSko4ZVAxRFJRR2FLTXgyS3dHSVZsd2c1?=
 =?utf-8?B?dDRmeGJ6OWdjOGdGWktzZnEyYXZvSnRPTXlCRFdtaFF2MU5mU2pVekUrRk1X?=
 =?utf-8?B?ZGhsQk54MTcwbWVjbk9iNlRvK1pxeTZFTFNmZnZiTnphcEJoTGdjQk5XekpZ?=
 =?utf-8?B?M29vWXYya0tFMTEzOWdSUXJ3WlE4a3JjNytZV0FEWFBoUWVaNFZRT290ZzlP?=
 =?utf-8?B?c1YwUkp6RVRxeUhFZFd0TURmaVl4aGlKQXN6a0RSUDAzV2ZVZ25LUFAwU29t?=
 =?utf-8?B?LzBZbW9hbnVzaE16WXZOdUhQZ2M0YzNsTVBqMEN2ekVzNW9wQ1F3K01VWmJi?=
 =?utf-8?B?bUdHVnVNQlNLTkErNmpiZzcwYkN1YWlVZXBZOFJGYlNsb2g2Q0QvZ2xTY2Rj?=
 =?utf-8?B?Vm1uUThVU3RqaENRMTMyQnBxNG13ZmhoZHRXWkF6NGc4WE5aTGJVeUZ3UTdE?=
 =?utf-8?B?SUsrbERtSlozelBtbW5UM21zSktDWDlwdkJHcmhRNTF3d3RYNjA4eExVV0hl?=
 =?utf-8?B?ckNGRitKL25tdTBNWTJueG9IWXhxQ1BiL2J1Kys0ZVl4NUkxQVdYekNUMTh2?=
 =?utf-8?B?RkM0RHFmZWYyOU9Yd3htd2ZXQnJRMW9nU3kvWGVQeHFMREhLdSs1WGFFclhZ?=
 =?utf-8?B?VXpJQ1ZBaDJySVVtWGREZFRCR2hpM1hwUjlmNURReFhnV29XRE9YczExQ3Qz?=
 =?utf-8?B?ZXJUZnNLYThQdS81N0ZGOUxTS0c3VUsxNFNtNlhQcnlmN2pCT2RBN2VvSWdx?=
 =?utf-8?B?cVRNMDM0YVdnWm55d051NkFtUHVwUU96K0NrS2s2ZGQ0UXlrakJHbVF0YkV3?=
 =?utf-8?B?ZGgycUY3bjJ2dHVXV3BNNmNJTDREZUx4c09Ic0QxOXJhZnN2cVJxM0JhM0pi?=
 =?utf-8?B?L1FydlFuL1N6OWNjNmh0ZWE5aHcvMXMzaWltM2ZJQjRIei93QTBFZmZuTVZh?=
 =?utf-8?B?Z25JWC90bjRzTVhHM2syQVFiejNhWHRNNS9QQ2ZYT3JaLzZPRWIweUN0dktO?=
 =?utf-8?B?OTljU1hZQnVZR0VpdW9rSjEzSGlON0hNZGtzR2lzbTlPZUFZY2o3K3BKK3B4?=
 =?utf-8?B?OHd4SHhzZGFEb0xQVnpzbXEyYjRWeE5BNFVucVQvRTh2c3dvc1RYbEkwOUFs?=
 =?utf-8?B?b0E4RHpoMGVWcUVLcTA5Y1RrVkl1VEhYTUo5ZzY2UlFGdmNKOHFseGZNTElP?=
 =?utf-8?B?bGFERFhiVE4yelBIMzNUeEV2YVU0T3FXKzZoWllVaTdNNTlDSE9UY296NXBv?=
 =?utf-8?B?RDhWZ3FOTU1Ud1F2cTIyVDQySktqQUNFVnpHUkxqdjdRMzlTNUd4T1c3eVcz?=
 =?utf-8?B?QkRaR091c1JHTXg4NnlvWG1qN0ljVVNVZWFKcXc1dGN5dnV3Tmtrd2dBMkll?=
 =?utf-8?B?QnpPMWxiM3daTWw0NEVVNzkwdVVRL0JLYVducG9BYkd1YXU1bEp0YzRRdlk1?=
 =?utf-8?B?VzRHc0xyQXQvcmVTRDQwbGp3dkF3andCcTFKR0gzWFVCTEJFYjF3MTRzTE92?=
 =?utf-8?B?MVpONDJOSjFDMjJ5WHBWQWFZNzFUU3krQ1lKQ0JxZkMzR2RjcTR0MEkvTTB6?=
 =?utf-8?B?cXVxbmFqMDFpclZvdVBabDJRSkpUTStydDV5WHNoUXExYkZzNVRnWnV4N0dp?=
 =?utf-8?B?SDkrODFZZ1ZYZlN4YzhtOFo0SkZmYUpDK2FzN1J6b1NKL2Fjd21LeUs1bE11?=
 =?utf-8?B?alNkOFNubWJMd0U1eFgwUk9IL1BzMUNmbFRZSXgvN0k1ZG1Pbi9wNjBDc3F1?=
 =?utf-8?Q?Jmc5MJWvvT7gF0NIKUaO3Igue?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8c0ee01-9df8-4351-cde6-08dd80d2416d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2025 12:44:28.5156 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OSNE3P62U4umtOWBl3nWf1uGpBMCtb6A+0Q1xmqiTiohUBiD7YzRtlfHfcHtJGJOVkVCM0bfVpw+1zn65uYjeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6855
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQm9yYWgsIENoYWl0YW55
YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2Rh
eSwgQXByaWwgOCwgMjAyNSA0OjMwIFBNDQo+IFRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tOyBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47
DQo+IEJvcmFoLCBDaGFpdGFueWEgS3VtYXIgPGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5j
b20+OyBNYW5uYSwNCj4gQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFtQQVRDSCAwMy8xMV0gZHJtL2k5MTUvZHNiOiBFeHRyYWN0IGludGVsX2RzYl97aGVhZCx0
YWlsfSgpDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiANCj4gRXh0cmFjdCB0aGUgY29kZSB0aGF0IGNhbGN1bGF0ZXMgdGhlIERT
Ql9IRUFEL1RBSUwgcmVnaXN0ZXIgdmFsdWVzIGludG8gc21hbGwNCj4gaGVscGVycy4gV2UgYWxy
ZWFkeSBoYXZlIHR3byBjb3BpZXMgb2YgdGhpcywgYW5kIHNvb24gdGhlcmUgd2lsbCBiZSBhIHRo
aXJkLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gu
bWFubmFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kc2IuYyB8IDI0ICsrKysrKysrKysrKysrLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNo
YW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IGluZGV4IDA4ZTNiYmVhMWE2Ny4u
MGRlMTVlM2E5YTU2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiLmMNCj4gQEAgLTIzNyw2ICsyMzcsMTYgQEAgc3RhdGljIGJvb2wgaXNfZHNiX2J1c3koc3Ry
dWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IGVudW0gcGlwZSBwaXBlLA0KPiAgCXJldHVy
biBpbnRlbF9kZV9yZWFkX2Z3KGRpc3BsYXksIERTQl9DVFJMKHBpcGUsIGRzYl9pZCkpICYNCj4g
RFNCX1NUQVRVU19CVVNZOyAgfQ0KPiANCj4gK3N0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfZHNi
X2hlYWQoc3RydWN0IGludGVsX2RzYiAqZHNiKSB7DQo+ICsJcmV0dXJuIGludGVsX2RzYl9idWZm
ZXJfZ2d0dF9vZmZzZXQoJmRzYi0+ZHNiX2J1Zik7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyB1bnNp
Z25lZCBpbnQgaW50ZWxfZHNiX3RhaWwoc3RydWN0IGludGVsX2RzYiAqZHNiKSB7DQo+ICsJcmV0
dXJuIGludGVsX2RzYl9idWZmZXJfZ2d0dF9vZmZzZXQoJmRzYi0+ZHNiX2J1ZikgKyBkc2ItPmZy
ZWVfcG9zDQo+ICoNCj4gKzQ7IH0NCj4gKw0KPiAgc3RhdGljIHZvaWQgaW50ZWxfZHNiX2luc19h
bGlnbihzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpICB7DQo+ICAJLyoNCj4gQEAgLTYyNSw3ICs2MzUs
NiBAQCBzdGF0aWMgdm9pZCBfaW50ZWxfZHNiX2NoYWluKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUNCj4gKnN0YXRlLA0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50
ZWxfZGlzcGxheShzdGF0ZS0+YmFzZS5kZXYpOw0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
ID0gZHNiLT5jcnRjOw0KPiAgCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsNCj4gLQl1MzIg
dGFpbDsNCj4gDQo+ICAJaWYgKGRybV9XQVJOX09OKGRpc3BsYXktPmRybSwgZHNiLT5pZCA9PSBj
aGFpbmVkX2RzYi0+aWQpKQ0KPiAgCQlyZXR1cm47DQo+IEBAIC02MzMsOCArNjQyLDYgQEAgc3Rh
dGljIHZvaWQgX2ludGVsX2RzYl9jaGFpbihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlDQo+ICpz
dGF0ZSwNCj4gIAlpZiAoIWFzc2VydF9kc2JfdGFpbF9pc19hbGlnbmVkKGNoYWluZWRfZHNiKSkN
Cj4gIAkJcmV0dXJuOw0KPiANCj4gLQl0YWlsID0gY2hhaW5lZF9kc2ItPmZyZWVfcG9zICogNDsN
Cj4gLQ0KPiAgCWludGVsX2RzYl9yZWdfd3JpdGUoZHNiLCBEU0JfQ1RSTChwaXBlLCBjaGFpbmVk
X2RzYi0+aWQpLA0KPiAgCQkJICAgIGN0cmwgfCBEU0JfRU5BQkxFKTsNCj4gDQo+IEBAIC02NTUs
MTAgKzY2MiwxMCBAQCBzdGF0aWMgdm9pZCBfaW50ZWxfZHNiX2NoYWluKHN0cnVjdA0KPiBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCX0NCj4gDQo+ICAJaW50ZWxfZHNiX3JlZ193cml0
ZShkc2IsIERTQl9IRUFEKHBpcGUsIGNoYWluZWRfZHNiLT5pZCksDQo+IC0JCQkgICAgaW50ZWxf
ZHNiX2J1ZmZlcl9nZ3R0X29mZnNldCgmY2hhaW5lZF9kc2ItDQo+ID5kc2JfYnVmKSk7DQo+ICsJ
CQkgICAgaW50ZWxfZHNiX2hlYWQoY2hhaW5lZF9kc2IpKTsNCj4gDQo+ICAJaW50ZWxfZHNiX3Jl
Z193cml0ZShkc2IsIERTQl9UQUlMKHBpcGUsIGNoYWluZWRfZHNiLT5pZCksDQo+IC0JCQkgICAg
aW50ZWxfZHNiX2J1ZmZlcl9nZ3R0X29mZnNldCgmY2hhaW5lZF9kc2ItDQo+ID5kc2JfYnVmKSAr
IHRhaWwpOw0KPiArCQkJICAgIGludGVsX2RzYl90YWlsKGNoYWluZWRfZHNiKSk7DQo+IA0KPiAg
CWlmIChjdHJsICYgRFNCX1dBSVRfRk9SX1ZCTEFOSykgew0KPiAgCQkvKg0KPiBAQCAtNzAzLDEz
ICs3MTAsMTAgQEAgc3RhdGljIHZvaWQgX2ludGVsX2RzYl9jb21taXQoc3RydWN0IGludGVsX2Rz
Yg0KPiAqZHNiLCB1MzIgY3RybCwNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGRzYi0+
Y3J0YzsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3Bs
YXkoY3J0Yy0+YmFzZS5kZXYpOw0KPiAgCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsNCj4g
LQl1MzIgdGFpbDsNCj4gDQo+ICAJaWYgKCFhc3NlcnRfZHNiX3RhaWxfaXNfYWxpZ25lZChkc2Ip
KQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAtCXRhaWwgPSBkc2ItPmZyZWVfcG9zICogNDsNCj4gLQ0K
PiAgCWlmIChpc19kc2JfYnVzeShkaXNwbGF5LCBwaXBlLCBkc2ItPmlkKSkgew0KPiAgCQlkcm1f
ZXJyKGRpc3BsYXktPmRybSwgIltDUlRDOiVkOiVzXSBEU0IgJWQgaXMgYnVzeVxuIiwNCj4gIAkJ
CWNydGMtPmJhc2UuYmFzZS5pZCwgY3J0Yy0+YmFzZS5uYW1lLCBkc2ItPmlkKTsgQEAgLQ0KPiA3
MjcsNyArNzMxLDcgQEAgc3RhdGljIHZvaWQgX2ludGVsX2RzYl9jb21taXQoc3RydWN0IGludGVs
X2RzYiAqZHNiLCB1MzINCj4gY3RybCwNCj4gIAkJCSAgZHNiX2Vycm9yX2ludF9lbihkaXNwbGF5
KSB8IERTQl9QUk9HX0lOVF9FTik7DQo+IA0KPiAgCWludGVsX2RlX3dyaXRlX2Z3KGRpc3BsYXks
IERTQl9IRUFEKHBpcGUsIGRzYi0+aWQpLA0KPiAtCQkJICBpbnRlbF9kc2JfYnVmZmVyX2dndHRf
b2Zmc2V0KCZkc2ItPmRzYl9idWYpKTsNCj4gKwkJCSAgaW50ZWxfZHNiX2hlYWQoZHNiKSk7DQo+
IA0KPiAgCWlmIChod19kZXdha2Vfc2NhbmxpbmUgPj0gMCkgew0KPiAgCQlpbnQgZGlmZiwgcG9z
aXRpb247DQo+IEBAIC03NDksNyArNzUzLDcgQEAgc3RhdGljIHZvaWQgX2ludGVsX2RzYl9jb21t
aXQoc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiB1MzIgY3RybCwNCj4gIAl9DQo+IA0KPiAgCWlu
dGVsX2RlX3dyaXRlX2Z3KGRpc3BsYXksIERTQl9UQUlMKHBpcGUsIGRzYi0+aWQpLA0KPiAtCQkJ
ICBpbnRlbF9kc2JfYnVmZmVyX2dndHRfb2Zmc2V0KCZkc2ItPmRzYl9idWYpICsgdGFpbCk7DQo+
ICsJCQkgIGludGVsX2RzYl90YWlsKGRzYikpOw0KPiAgfQ0KPiANCj4gIC8qKg0KPiAtLQ0KPiAy
LjI1LjENCg0K
