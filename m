Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Dg1DjrbBWrAcQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 16:24:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0521543092
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 16:24:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B37CC10F23A;
	Thu, 14 May 2026 14:24:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CEdq/1nG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A68310E389;
 Thu, 14 May 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778768693; x=1810304693;
 h=date:from:to:cc:subject:message-id:
 content-transfer-encoding:mime-version;
 bh=rImptQ1fLdBRAHH8tCG0SYU1fBZ7IQOkKGpX+6ew9pw=;
 b=CEdq/1nGyxwH2PFSgZ2BReuPHSxVHwXnt8E1NWPBWllSNmrvsHTfgAx1
 hI4B2D3yxkz+PU6FW27UPItFaH9C93R5gd0yNsg/Ht9rW4KmFunElkVgA
 O995gYjo9Kc479RWMqUyUiUPRKnKYyNsqAO6j0rtrXYJaXnVuggBK9C0N
 Ajk8WhyvPCUzoha/xlTQIkjK5bQgGw9oi1ib99uJeIoqduPgtVYNtD6wg
 Xl/IZFyH35nKX9/xt6ZPlNgHysLarI9AjbQxjxHyrW5ibc5xDvw+tOpk0
 tt+p5U3tlDSUSn/jeFMFJywktvNSNB9ZEsc33aOR2cQ+mll1TR+7kJjPG A==;
X-CSE-ConnectionGUID: tiNTwjc8Qe22dr53uyxY9Q==
X-CSE-MsgGUID: iBt3tSdQR76iggZ0UMPtww==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="102382340"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="102382340"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 07:24:53 -0700
X-CSE-ConnectionGUID: Xsm7eMOCRD+GyKewkbJCcQ==
X-CSE-MsgGUID: EHL07jikQlWtG/oL8RS+aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="242743720"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 07:24:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 07:24:52 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 14 May 2026 07:24:52 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.32) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 07:24:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WVCLncpiJD8o3AQiFGQALw4WS17gX1i3G0/vA+DFQBvAxYnHnaU0dJZk6RtRH2M0b+u8e01WuR3zFnTK5pHR58rCHuiL9sw4MYmCamzXp+3/5E5+mUKcjUIGQPMuYjbc7+QP3KfSk76M5YmAFaj2UM7f90m8b4wFqCT80WJxeX0k9rvN/2LyorAIpplV2WetOZFSeRkSsj9JUnNUrSjBVbLpDUQCCc4JhX5H5H0SqIxdAGbb7ucAr7UORSJ/9MNkdfguPNrk3kUrUsgQN0th4O8uh+z4FFT3q59DVxdyeWOcHR+TOlf/Hg8HyTdK/2JEIwZXouqQN7Tg2jUeiahc9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1oFkyrvrfUsN13KHqoObdQtbXQO60KPUTiMYd5FsMzk=;
 b=L9rIWAO/Q3Iviyi2ilDwML+g3scXeLmA0gZmmU8cOav+VtZyNB9LpSkTVrAwoO6h0gEAtyMURrm5YRDGtkXjRhox2iLUmBt+psuitKRqwFUBkcdGAfp6fZdg5Gh1G3vHjBghTX9pNZ7dnwv+JSwb1jIL37sMSSDY50pS6FXI4rkdpx7r3JOFIbQsaQwnBzdI4AJZVAvFSq9PjSxD1l0/+qWRBvdFL2Uk7YUrjaH0gpjefHlHG0SXPk64tksTABfKDWQ0Exfh5z6RfPRaz7F2XkGAEHyHzDGqe4+HoevFZDCD8wFS3T7YXr7TPlU1WDHDMpIodyj6L4baCFeluQs+pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by IA3PR11MB9352.namprd11.prod.outlook.com (2603:10b6:208:575::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Thu, 14 May
 2026 14:24:48 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9913.012; Thu, 14 May 2026
 14:24:48 +0000
Date: Thu, 14 May 2026 10:24:44 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, "Oded
 Gabbay" <ogabbay@kernel.org>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dim-tools@lists.freedesktop.org>
Subject: [PULL] drm-intel-next
Message-ID: <agXbLMtMECnKy-YV@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0192.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::17) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|IA3PR11MB9352:EE_
X-MS-Office365-Filtering-Correlation-Id: 87ec9e5a-b118-473e-f326-08deb1c48dc2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|1800799024|376014|366016|11063799003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: L5daY1maIAQr8jrNSeKA5pMz1edrJjBBQNWd+U01p/5ZghVtcOlA6TDei7ppw7IWM20/sTpDxqyiRWO1p1TTlj6UT5ic49eYsk1rebSegtQm2kQ4uaQvltLdb+K5rgj4+5CE8VUQhfI3znLzSD/KkaFm31L54nHuE3bL8xFtoj6IPcK+R3j0OZJuD7xrL6HcV70GzuidDIDsMeQ4d+DiM1dvtwQ/Ge5CFWvteeufGSiHioKbB/+G8ufvv2xI7T3s0fcGQaf+OTg1Vc/XRcuK1b5vAHlHWycK3dXY90gMirxmSBnSsisdvvt4Bh4FLNi+btBxW+3PIAWcRuGIJXfaGyB0IwJeNc8k5sVeQh3bW9E/XSiD+jdBjyrqb8LJzkOzEC9o8xa/9vIBnLCjVKqNYR2+0LsiDFwf4kQrXkqH3MMN0W0gbdPUwFbbTP7j5OZX5yKpB3cuh2/op9HoosF+WY10/dvl5MoLgsx/K4ziRj15jjCJbiTqT2OPCvMBvzeUa/WROr7b+OlQTG/HG2rX8N6bxYihNGvxmjx7LZqTQtMi7FcLWKhol+/+997bE/rOzdRGGgZJGFmVDZDlm5urdo6+Qjo5lPElfK6pPL/wX/0a8mfDitqrwiYRe2ib3hp/E98cmgG6tkXrk6eBbJWWxQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(366016)(11063799003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?w0KkcvlU5x9ra9HvwbDOA/px94UOV8dMBs8uMV0tBufQ9SNUkhISX7JSgJ?=
 =?iso-8859-1?Q?1QRskOVeJroLENakohg43H8hC+4ds8jyl0TSP693SCI4M+DCBzH83mzpOJ?=
 =?iso-8859-1?Q?wZZH2rRRCWdH2CRKwuvkqn08s+UxFiZ3uDA63kt5E7o0nT77wxmpskmd2h?=
 =?iso-8859-1?Q?LkKlRbb3vMZHmI7DUn7AdH0zc4QIdEsIxtwW0JXmaeNX4Fmr2gZNXg9uu7?=
 =?iso-8859-1?Q?83RV5iHe/vKmFsPCIpo3DDcQ5VySGsRZ/dP5KQMkCrfSt6OQtD7Cxi94WL?=
 =?iso-8859-1?Q?aUpT/8zE9D22C0DFsrgtvjiwmeFs7x1SbUGU9PciK+FrBUPQIR2dLNfzGk?=
 =?iso-8859-1?Q?XlUWGpeM+zkNCUtMTiek29nrPed1rFoR7cFvSUQpjJ9bPi2kbB9VRDMW5Y?=
 =?iso-8859-1?Q?pMDIrnKZJAshS6LP9e4ph3DmgFqbl4hG3WZcqeNCvmIAGmnYNenowRMEcZ?=
 =?iso-8859-1?Q?xYebbzZ55c2MwlhxuBMfyvvghCjGPRGEJKP6gxOcAyxWnFH2iDvIjxfYIw?=
 =?iso-8859-1?Q?/r9a3oPfKL/1yqNzih6O5JjuBiDcSSmv+81AEsC30NUYd57jAxeq5TZRVt?=
 =?iso-8859-1?Q?SD69IojK9nXuRIBkAcr8EeWcXar+uFvddTD7AWqpmLoOMUUP6ZzQQu+d6a?=
 =?iso-8859-1?Q?XptigGGmRkQCALi/WHrAHD6DyVZpejPD6aK8c2cnNe18SyC7ieM2tUnnzJ?=
 =?iso-8859-1?Q?S2my2n62TkMyksXQbDdztgZe2NXeB9WTYexZwO+yJXKKNOS2oGDaOvZ85n?=
 =?iso-8859-1?Q?ZKmiOnZixf2+n0/GdafUHouHDGoy80dak2GgV0yR9yafqcqp9TSR3rwaAJ?=
 =?iso-8859-1?Q?1lV9VdZoGMBANDuDlTJY7RWriWNsKf8PPXt3BP3t2H8wdNI6QPf3td8Nkm?=
 =?iso-8859-1?Q?ZIC0JFC2tnbgAKSy+62eYVbROIxAgrydwEq+WnuDwQ+Kh+phHy5u+h86A3?=
 =?iso-8859-1?Q?2Ex7txN3Dd8nV+YpwNb7SUKnJWdZYepQMqz9QcnONnqCcHbseghkIlA/lu?=
 =?iso-8859-1?Q?L1bPu2dgMmZXvml8UqLbpMEeviix+nU6UragfdFwqXuD6z5VDk1SAyj2nE?=
 =?iso-8859-1?Q?KZvT7jsjwjIEn+y++QILt0sR/a1RvVdB015vVfp87ikDQsJNQ/1ZI/Cilu?=
 =?iso-8859-1?Q?YkZ1DiKuRvepQ3qrinafm75yQe+2jR3KojO45Mo4Kc4N9FFoI44T/GwtXJ?=
 =?iso-8859-1?Q?BWKa+Vr03COxdfKuufWuFLyvaGpZMQtDHU1oM7yge3R+UX4Ib1R97MpZYe?=
 =?iso-8859-1?Q?fuL/C2TT3oEFyhY/fpePqO8C1nXtam8wOcgMguFMqGQrXQbp5P+7p2ZkA4?=
 =?iso-8859-1?Q?zqSzF842xCid1EdiGZ6nzAVifXykjh7rPM0jDNUXSkqdmFj0XzsA77pMgv?=
 =?iso-8859-1?Q?YM2+KIO5VeZyF1kzYvWsWJs4MF2/eEvKXinMOsWnN0ov+366NAv/Nrev+y?=
 =?iso-8859-1?Q?2zcJbHCWUWAD5R+/64tedQxAf0HPe8bRNrSRyrvCoxSTu/Yc4ueRMgrVjY?=
 =?iso-8859-1?Q?LHOMKHnL6msqtjpNRIL4vc5Nji9xGRD68P4r9ZseU42a8z4h1sPXBHkshf?=
 =?iso-8859-1?Q?GcprRzX2k2n2FtEwGy+bsqFVa0ULY5GVWeqMakI5TN6YeneRWrqMm5HYVp?=
 =?iso-8859-1?Q?rOnPUVNWzlLiLHtDxeHfL5UaLhL5FEa+wgJ0fiNhx39S3g3kWhRLUlaTRz?=
 =?iso-8859-1?Q?pzQH3iBiKH4Ji3j+3rWcd7ekfX88PY5rWh5kGJa+FZIvfbUpiRK1PDd1l2?=
 =?iso-8859-1?Q?jEqYnssGgSQI+0qm0FEVamoh/qo88L6lKhzhL4nBzybCFLabzbJA2U6/+t?=
 =?iso-8859-1?Q?WddoMfpAdA=3D=3D?=
X-Exchange-RoutingPolicyChecked: U8UdQ5bcA3+Li+IDOjMXZTBv2vV/beU9g/3VHV6EwMO6ENMlpTprCbtyMpxZU2j1gpuEk33ndks2RFOycSwtt9IuV1FwT/alUeo523ECgDch87hWQDuHjvrRuYOX6ggcym4Bw/+U0x8yESzxvSLQAFI4iYBiIJy+byJIFDzyhl5/s52bzVeCsLbeNEjmJrIKTtE6z380xLvn3G4+kQjT5DREBTwl7zsFrgAzwWMjo2/pfA1tzsrYALIFISBbmMHP5F5O9sZ0TZRM2A/NGZYFRQ31svwHksBHylOj1tObpgE6WRVG3E3h8HVThAE4wcxIKUpd/CIuvJFUH5OyoHxWXQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 87ec9e5a-b118-473e-f326-08deb1c48dc2
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2026 14:24:48.5387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pCJ06ycR3TyvDl9SDvpE9Nuhflqtth74xgEQIYffCNui4Ozg23xNmJb4sRWMzt9IB5NBgDHLiJr6rpI/T5BMog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9352
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
X-Rspamd-Queue-Id: B0521543092
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[16];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gitlab.freedesktop.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Hi Dave and Sima,

Here goes an intermediate drm-intel-next for this round.
Mostly to ensure the propagation of the Revert of the Kconfig
change that has broken some builds.

I'm planning to send the last drm-intel-next PR for this round in 2 weeks.

Thanks,
Rodrigo.

drm-intel-next-2026-05-14:
- A Revert of a Kconfig patch that broke some builds (Jani)
- New fb_pin abstraction for xe and i915 fb transparent handling (Ville, Tvrtko)
- Skip inactive MST connectors on HDCP cases (Suraj)
- Reduce redundant intel_panel_fixed_mode (Ankit)
- Some general fixes (Imre, Chaitanya)
- Reorganize display documentation (Jani)
- Start switching to display specific reg types (Jani)
The following changes since commit 025f89b01ed8d5e65d87ed54f231e10c6ac08188:

  drm/i915: replace select with dependency for visible DEBUG_OBJECTS (2026-05-05 16:39:55 +0300)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-next-2026-05-14

for you to fetch changes up to ae27befd097f1ddaec61b231ba775d0768aab859:

  drm/i915/sdvo: use the i2c bus locking functions (2026-05-13 20:13:31 +0300)

----------------------------------------------------------------
- A Revert of a Kconfig patch that broke some builds (Jani)
- New fb_pin abstraction for xe and i915 fb transparent handling (Ville, Tvrtko)
- Skip inactive MST connectors on HDCP cases (Suraj)
- Reduce redundant intel_panel_fixed_mode (Ankit)
- Some general fixes (Imre, Chaitanya)
- Reorganize display documentation (Jani)
- Start switching to display specific reg types (Jani)

----------------------------------------------------------------
Ankit Nautiyal (5):
      drm/i915/intel_sdvo: Check fixed_mode->clock against max_dotclock in mode_valid
      drm/i915/intel_panel: Avoid calls to intel_panel_fixed_mode() in mode_valid
      drm/i915/intel_dvo: Drop call to intel_panel_fixed_mode() from compute_config
      drm/i915/intel_sdvo: Drop call to intel_panel_fixed_mode() from compute_config
      drm/i915/dp: Drop call to intel_panel_fixed_mode() from compute_config

Chaitanya Kumar Borah (2):
      drm/i915/dp: Fix VSC dynamic range signaling for RGB formats
      drm/i915/display: Copy color pipeline from plane in the primary joiner pipe

Imre Deak (2):
      drm/i915/ddi: Fix cleanup after DP connector init failure
      drm/i915/ddi: Fix cleanup after HDMI connector init failure

Jani Nikula (10):
      Revert "drm/i915: replace select with dependency for visible DEBUG_OBJECTS"
      drm/i915/irq: drop unnecessary forward declarations and includes
      Documentation/gpu: add dedicated documentation for Intel display
      Documentation/gpu: use === for Intel display section heading underlines
      Documentation/gpu: add remaining DOC: comments to Intel display documentation
      drm/i915/display: add typedef for intel_reg_t and use it
      drm/i915/display: add struct intel_irq_regs and use it
      drm/i915/display: add struct intel_error_regs and use it
      drm/i915/display: define and use intel_reg_{offset, equal, valid}() helpers
      drm/i915/sdvo: use the i2c bus locking functions

Suraj Kandpal (1):
      drm/i915/hdcp: Skip inactive MST connectors when building stream list

Tvrtko Ursulin (1):
      drm/xe: Use fb cached min alignment

Ville Syrjälä (17):
      drm/xe: Respect pin_params.alignment for GGTT
      drm/i915: Introduce intel_parent_fb_pin_get_map()
      drm/i915: Move intel_fb_pin_params to the parent interface
      drm/i915: Move the i915_dpt_offset()==0 assert
      drm/i915: Reorganize intel_plane_pin_fb() a bit
      drm/i915: Introduce i915_fb_pin_dpt_(un)pin()
      drm/i915: Introduce i915_fb_pin_ggtt_(un)pin()
      drm/xe: Move the FORCE_WC assert into __xe_pin_fb_vma()
      drm/xe: Kill the fbdev vma reuse hack
      drm/xe: Reorganize intel_plane_pin_fb() a bit
      drm/xe: Introduce xe_fb_pin_dpt_(un)pin()
      drm/xe: Introduce xe_fb_pin_ggtt_(un)pin()
      drm/xe: Restructure reuse_vma()
      drm/i915: Introduce the main fb_pin parent interface
      drm/i915/fbdev: Use intel_parent_fb_pin_ggtt_(un)pin()
      drm/xe: Use xe_fb_pin_ggtt_pin() for the initial FB pin
      drm/i915: Consolidate the intel_plane_(un)pin_fb() implementations

 Documentation/gpu/drivers.rst                      |   1 +
 Documentation/gpu/drm-kms.rst                      |   3 +
 Documentation/gpu/i915.rst                         | 202 +-------------------
 Documentation/gpu/intel-display/async-flip.rst     |   8 +
 Documentation/gpu/intel-display/atomic.rst         |  11 ++
 Documentation/gpu/intel-display/audio.rst          |  23 +++
 Documentation/gpu/intel-display/casf.rst           |   8 +
 Documentation/gpu/intel-display/cdclk.rst          |  11 ++
 Documentation/gpu/intel-display/cmtg.rst           |   8 +
 Documentation/gpu/intel-display/dmc.rst            |  26 +++
 Documentation/gpu/intel-display/dpio.rst           |   8 +
 Documentation/gpu/intel-display/dpll.rst           |  14 ++
 Documentation/gpu/intel-display/drrs.rst           |  11 ++
 Documentation/gpu/intel-display/dsb.rst            |  11 ++
 Documentation/gpu/intel-display/fbc.rst            |  11 ++
 Documentation/gpu/intel-display/fifo-underrun.rst  |  11 ++
 Documentation/gpu/intel-display/frontbuffer.rst    |  14 ++
 Documentation/gpu/intel-display/hotplug.rst        |  11 ++
 Documentation/gpu/intel-display/index.rst          |  44 +++++
 Documentation/gpu/intel-display/plane.rst          |  11 ++
 Documentation/gpu/intel-display/psr.rst            |  11 ++
 Documentation/gpu/intel-display/snps-phy.rst       |   8 +
 Documentation/gpu/intel-display/vbt.rst            |  14 ++
 Documentation/gpu/xe/index.rst                     |   5 +
 drivers/gpu/drm/i915/Kconfig.debug                 |   2 +-
 drivers/gpu/drm/i915/display/g4x_dp.c              |   4 +-
 drivers/gpu/drm/i915/display/g4x_dp.h              |  10 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c            |   2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.h            |   6 +-
 drivers/gpu/drm/i915/display/icl_dsi.c             |   2 +-
 drivers/gpu/drm/i915/display/intel_audio.c         |   2 +-
 drivers/gpu/drm/i915/display/intel_color.c         |   4 +-
 drivers/gpu/drm/i915/display/intel_combo_phy.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_crt.c           |   6 +-
 drivers/gpu/drm/i915/display/intel_crt.h           |   6 +-
 drivers/gpu/drm/i915/display/intel_cursor.c        |   1 -
 drivers/gpu/drm/i915/display/intel_cx0_phy.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c           |  51 +++--
 drivers/gpu/drm/i915/display/intel_ddi.h           |   6 +-
 drivers/gpu/drm/i915/display/intel_de.c            |  30 +--
 drivers/gpu/drm/i915/display/intel_de.h            |  48 ++---
 drivers/gpu/drm/i915/display/intel_display.c       |   8 +-
 drivers/gpu/drm/i915/display/intel_display.h       |  10 +-
 .../gpu/drm/i915/display/intel_display_device.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_display_irq.c   |  20 +-
 drivers/gpu/drm/i915/display/intel_display_power.c |   4 +-
 .../drm/i915/display/intel_display_power_well.c    |   8 +-
 .../gpu/drm/i915/display/intel_display_reg_defs.h  |  35 ++++
 drivers/gpu/drm/i915/display/intel_display_regs.h  |  50 ++---
 drivers/gpu/drm/i915/display/intel_display_types.h |  12 +-
 drivers/gpu/drm/i915/display/intel_dmc.c           |  50 ++---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c        |  14 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.h        |   6 +-
 drivers/gpu/drm/i915/display/intel_dp.c            |  36 ++--
 drivers/gpu/drm/i915/display/intel_dp.h            |   3 +
 drivers/gpu/drm/i915/display/intel_dp_aux.c        |  28 +--
 drivers/gpu/drm/i915/display/intel_dpio_phy.c      |   8 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      |  32 ++--
 drivers/gpu/drm/i915/display/intel_dsb.c           |  22 +--
 drivers/gpu/drm/i915/display/intel_dsb.h           |  10 +-
 drivers/gpu/drm/i915/display/intel_dsi.c           |   7 +-
 drivers/gpu/drm/i915/display/intel_dvo.c           |  29 +--
 drivers/gpu/drm/i915/display/intel_dvo_dev.h       |   2 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.h        |  40 ----
 drivers/gpu/drm/i915/display/intel_fbdev.c         |  25 ++-
 drivers/gpu/drm/i915/display/intel_fbdev.h         |  11 +-
 drivers/gpu/drm/i915/display/intel_fdi.c           |  12 +-
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c |   4 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c         |   4 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c          |   8 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c          |  28 +--
 drivers/gpu/drm/i915/display/intel_lt_phy.c        |   6 +-
 drivers/gpu/drm/i915/display/intel_lvds.c          |  13 +-
 drivers/gpu/drm/i915/display/intel_lvds.h          |   6 +-
 drivers/gpu/drm/i915/display/intel_mchbar.c        |  14 +-
 drivers/gpu/drm/i915/display/intel_mchbar.h        |   8 +-
 drivers/gpu/drm/i915/display/intel_panel.c         |   9 +-
 drivers/gpu/drm/i915/display/intel_panel.h         |   3 +-
 drivers/gpu/drm/i915/display/intel_parent.c        |  60 ++++++
 drivers/gpu/drm/i915/display/intel_parent.h        |  34 ++++
 drivers/gpu/drm/i915/display/intel_pch_display.c   |  14 +-
 drivers/gpu/drm/i915/display/intel_plane.c         | 124 +++++++++++-
 drivers/gpu/drm/i915/display/intel_plane.h         |   3 +
 drivers/gpu/drm/i915/display/intel_pps.c           |  38 ++--
 drivers/gpu/drm/i915/display/intel_psr.c           |  36 ++--
 drivers/gpu/drm/i915/display/intel_sdvo.c          |  23 ++-
 drivers/gpu/drm/i915/display/intel_sdvo.h          |  10 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_tc.c            |  10 +-
 drivers/gpu/drm/i915/display/intel_vblank.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c          |  10 +-
 drivers/gpu/drm/i915/display/intel_vga.c           |   4 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c             |  16 +-
 drivers/gpu/drm/i915/i915_driver.c                 |   2 +
 drivers/gpu/drm/i915/i915_fb_pin.c                 | 207 ++++++++-------------
 drivers/gpu/drm/i915/i915_fb_pin.h                 |   9 +
 drivers/gpu/drm/i915/i915_irq.h                    |   7 -
 drivers/gpu/drm/xe/display/xe_display.c            |   2 +
 drivers/gpu/drm/xe/display/xe_fb_pin.c             | 175 ++++++++---------
 drivers/gpu/drm/xe/display/xe_fb_pin.h             |  21 +++
 drivers/gpu/drm/xe/display/xe_initial_plane.c      |  18 +-
 include/drm/intel/display_parent_interface.h       |  42 +++++
 102 files changed, 1242 insertions(+), 885 deletions(-)
 create mode 100644 Documentation/gpu/intel-display/async-flip.rst
 create mode 100644 Documentation/gpu/intel-display/atomic.rst
 create mode 100644 Documentation/gpu/intel-display/audio.rst
 create mode 100644 Documentation/gpu/intel-display/casf.rst
 create mode 100644 Documentation/gpu/intel-display/cdclk.rst
 create mode 100644 Documentation/gpu/intel-display/cmtg.rst
 create mode 100644 Documentation/gpu/intel-display/dmc.rst
 create mode 100644 Documentation/gpu/intel-display/dpio.rst
 create mode 100644 Documentation/gpu/intel-display/dpll.rst
 create mode 100644 Documentation/gpu/intel-display/drrs.rst
 create mode 100644 Documentation/gpu/intel-display/dsb.rst
 create mode 100644 Documentation/gpu/intel-display/fbc.rst
 create mode 100644 Documentation/gpu/intel-display/fifo-underrun.rst
 create mode 100644 Documentation/gpu/intel-display/frontbuffer.rst
 create mode 100644 Documentation/gpu/intel-display/hotplug.rst
 create mode 100644 Documentation/gpu/intel-display/index.rst
 create mode 100644 Documentation/gpu/intel-display/plane.rst
 create mode 100644 Documentation/gpu/intel-display/psr.rst
 create mode 100644 Documentation/gpu/intel-display/snps-phy.rst
 create mode 100644 Documentation/gpu/intel-display/vbt.rst
 delete mode 100644 drivers/gpu/drm/i915/display/intel_fb_pin.h
 create mode 100644 drivers/gpu/drm/i915/i915_fb_pin.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_fb_pin.h
