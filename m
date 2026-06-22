Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id h/88MpU0OWoDogcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 15:11:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 425D56AFB23
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 15:11:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LYxgsuKw;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB53710E6B6;
	Mon, 22 Jun 2026 13:11:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C30610E6B6;
 Mon, 22 Jun 2026 13:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782133908; x=1813669908;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Gj0xjVWY0ZJJx9M8hgtnJx7+bjHmMD9DtYJmdiHbn4w=;
 b=LYxgsuKwKbkmbFa/2NwZfiL3Z44FT357ubR1kpiPfMRo9jsBNFHU3AIH
 4j6FdNCmDZQqaHzaDF9sCn6oS0ThoYktXee1WAfexUPo4mPpOO+qKNEHR
 HlOAS08LppWzlYEUQScv/Y4kTSaIIlYR8CI3RMVaCoJZyIdt4cWzwc+RB
 Q/a2PEWa+nn1LQq+FQfUkUo/vnP+/Un3qkBdiBCKIhAiIfIs24U/N9Gw+
 zDhMz78Ymev2acwl3UNhoqX5FBgmh56AGIcT9MhFoKeFQo/PDv/cjqMyR
 WMYT+qNaXnYRc4FpmkHUqNwISdtUiFJ2BOVaePa6hW5kOCx4qpSoZvVCY w==;
X-CSE-ConnectionGUID: jRDubL3hRIKrS2MIfLVuSQ==
X-CSE-MsgGUID: Cmolmqw9RZiJczs/uFG9Yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="100290976"
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="100290976"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 06:11:47 -0700
X-CSE-ConnectionGUID: TfuR8v3QQPe1Qu+U/0e3Fw==
X-CSE-MsgGUID: dPfWA9ADQMOf000H0x6xlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="253124541"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 06:11:47 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 06:11:46 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 06:11:46 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 06:11:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oIltkZc2Pnhmw5DGACZ7QOdo0N4n3DcC0rDPYqxThBxeCRNiWOzIFdXsaeAT2o43KJ/07580We2ohFCsF9hHtSSWkOkeRPyE5Zia4lqlbm8ur5dXVdyRhI089qWjMsZeHdhqDxUmyfJzVMMciW2+3L9l7zLsVhiMReAK8BH4OncU0BJfHd5XUZ9/DmBmNnAx6LN+b0PNDjqlRFCzerLRubx/n/0/k2NRVJOuekfj8JQKWrsMUg7tkq5Zk9RRyaUWjfc1Q5KW9u32vMWPvAegPtJNKDrUecc7sYsxUTk1d2gDPiDBpIOMQvG/XgdsS6E6AoMiv5ddFAZbOzFuPkFtGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gj0xjVWY0ZJJx9M8hgtnJx7+bjHmMD9DtYJmdiHbn4w=;
 b=uDcVkzDSXKyYmfG1VXS8mvHkSuCmSyDtdleh0fmVg6H4s7cw/aq2SlfP37s3rs8zDVZLQ8+RrtyJx+pNxdRTvWU9xnEaJfSFX49x5RR/FK6JJGA7O8YfyhX7XcJ9O2Uyyq4NVZROxckRH83Ee0mregnJVT2CKDW/nOW79VGH4xt61+9J3tNI6p8yGyf5nq3RiwluJQSxRBQSgYpgYO/h2g0R8tGYeL8ImLX+oR0UyrAdKGG60Jr/k8/lP8CJqH7qB0hnnRo9qwZYyHA6uozWH0TvKlf7MPB+K6t8+dg23/+kZfWBsbfFeuJeGzfZ+UYOcqbKuFkF7bOg3PWImDu5FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ5PPF57F27BA08.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::82b) by IA1PR11MB8248.namprd11.prod.outlook.com
 (2603:10b6:208:447::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Mon, 22 Jun
 2026 13:11:39 +0000
Received: from SJ5PPF57F27BA08.namprd11.prod.outlook.com
 ([fe80::10f:5d3d:a8dd:569c]) by SJ5PPF57F27BA08.namprd11.prod.outlook.com
 ([fe80::10f:5d3d:a8dd:569c%7]) with mapi id 15.21.0139.018; Mon, 22 Jun 2026
 13:11:38 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 02/28] drm/i915/dp: Add struct intel_dp_link_config
Thread-Topic: [PATCH v2 02/28] drm/i915/dp: Add struct intel_dp_link_config
Thread-Index: AQHc/cwV3k+sRDpZUUqi3LYOF+rfH7ZKlaWA
Date: Mon, 22 Jun 2026 13:11:38 +0000
Message-ID: <SJ5PPF57F27BA08796E9C1D6630BFF08C87EFEF2@SJ5PPF57F27BA08.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-3-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-3-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ5PPF57F27BA08:EE_|IA1PR11MB8248:EE_
x-ms-office365-filtering-correlation-id: f4eef29c-2ee7-46ac-dec2-08ded05fcb95
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|18002099003|22082099003|6133799003|3023799007|38070700021|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: 6Y7Za1mGkp4LcxhZOUlnaOx2Hg1g7Yaf2kuPOT7aei3swDAX4jVcotqiNcSCp3wiTpqFw3vjDZKb8slkrdjFrUtxovTAmUiHLe4X/EJsUp5iVETxoc7yl0MZ5Lh7ApeR63K9LfrltqCvDtQGEhMRH4QZLnn6iQASFoZ11Oe3mK6CCtWHUMH3eMO1/CZr1AevPwXVNCAap1xjZFbk7ulkj0XDATAJ4vInd+ZJF64FSRyJr9tePyJayvUWAHekXSUN5COVpwjQ7nXTm8yVWpF+93JlgAAB2OehlhybANtZKOogcf/M/CAZn0OVxL63/toi5sT8aoLpuNosT9RnNtDTakbC/X7MRitMZrL1ySgWfXShXOmf82AnqHv4S+bNr61agbCpNcLVZXLkFJwwRsf5/5yjPyVZR8lxje9tr8EBYek6I72wAJvP5KzkP2m2uy/NQSJUbvJXAX9CU8ZnhosOK/lv0xKoGCzSW6AIbPam1L9I1AtVTkIFS1euq2HmoVgAqO7DMK8uihd9w12Ez5yK1/Y74L1Lnx36ZZK5hN/OBNq2YXgz7bC/ZqydAcLaSLCHhAhKYEdO92ecnUQcy+0kUT3y2gGfBkyY6i/AwQuY+ZOSNPp1lpH2C8rY15WRWUFu3lB5C+iTlcCK8M6/3h53X0uBo+cGdOXt1bKhkbhq+6rvmpws2NcrfiCjl3tj4ksSXh4wg3n5hNMBuYxhKCYCm87PHbon2gXEp/wgcqprauk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF57F27BA08.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(18002099003)(22082099003)(6133799003)(3023799007)(38070700021)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dEk2bkxMWklBL1FodU90MkR4TmFuQXBqb3NodTgvSmwrREtVc2xBcGJuU3I2?=
 =?utf-8?B?c2JZL2FOdmRPUm4vR24yVkpMQ3BGdVNlR1E0Q1B1ck9vZit6UjNxdzJlek40?=
 =?utf-8?B?NzVwS3NBTjJrM2VGMk9tMlZMaEZaVEEyVS9kaldQaS9mNjlkS0tZZVFBWXhu?=
 =?utf-8?B?QnphSzk4YzV0WWwvZE1ZRTYwQ2ZDZkEvZXF6WXF3eHdCM3ZweXFvY0FTL1Yx?=
 =?utf-8?B?OU8yOE40djFFQnB6OTFUTGNsNmxsRHErVUtJVThrWG1qUm45OXVRUlFPd3RF?=
 =?utf-8?B?a2pRUDVJV3djU2wyVlZKckpNSU9hblNtZ21VTDh3bXVBNGs0ak40M1RpTCt6?=
 =?utf-8?B?WFZqaVppSDFoNVNJenJDZ2FYcVZObXc3alo1QWVRN25wQzZ4ZXpkL3FVbjNB?=
 =?utf-8?B?TjluRElURWNCNTZYSDJwYVdHVE56aWRERGlIak1hN1lZeTdMaVVGSjdSTFN5?=
 =?utf-8?B?dXFzSVZwS1UxdFlNaVFhY005bUZnWDk0dVlWaUVYRVV6V2c5UHljRmJFMjZ1?=
 =?utf-8?B?SHVWeWxXbFJrTXo0L3pjQnFXR2hadEpsQi83ZWk5Ty9Ub0cybU1rTXFqR1BQ?=
 =?utf-8?B?cGQySk9iNGlFczR2QkpqR3g0enB3SGhKeWtqZkRhcjhUT1l5MjB0djhtaUN4?=
 =?utf-8?B?V1BtendmejFGQnpHREVBQ3VDUXViTVhQVFJFZ21zUlZjTlowbm9zV0NzNTlv?=
 =?utf-8?B?MG40RmcxR0krSURpeWFHQ2FwZzhFKzNJMXJDc0tHZnlMR1lJWEZIWEpKYTZj?=
 =?utf-8?B?YmdNSUgvaUIyMkJMZ3pvNXRrMHFYZFQ4SzQzWWR3NEhWMnNsZUt6NEp4Qzc1?=
 =?utf-8?B?S3hzTkhXVmM1dTlFSkh2QSt4Rk5jb0ZIc3diL0wySExsb2FHbGVkQU0wU0VY?=
 =?utf-8?B?SU9hN2JEN3pBUFJaM2g2dWpKODM0MUovWTFaRi84YThUOHVlZFU2elZuU0Yw?=
 =?utf-8?B?N2FWSXZoVWVidHg4NXE3dmJEeUw2aFA1WnV0VzhQODFwa0luVEk4VitZd3VB?=
 =?utf-8?B?M1BJWHpsajJ5RzdLQ1o1N2N2VEdNdXY4OEhVc0ROZUtERitQc3hNM1h3dFB4?=
 =?utf-8?B?Zk9JTkR3WmF2c3dBNkZxRDRNYUpGV1VTKzMyNmxjZ2wwVDMxNHVYMGZPZFJ2?=
 =?utf-8?B?RldyRmZqSXkxZFh4YWljM0w2cjlLb0lvbUZkT01RYUxCQUIwSlFpWi9yb0Z1?=
 =?utf-8?B?QzQ0THVDaU1pQUVSeFYwb3Izb1cyUm84cWxqZnVSUXQ5T2xRNHBwSllCSzE0?=
 =?utf-8?B?cnVvMDdFMldlUWlYYjZiY2ZQWUczMVk5bVZBS0xoQjNhZHBRekhBazdMSU1E?=
 =?utf-8?B?dnpDR3oveXIxTStKb2JLQ2JlaWxycG9oNG1pWENYUEdkc0lKMGJvbWt1WWtX?=
 =?utf-8?B?aUJ6MzdGYkVVTzV4MFNMaTdFc1MyWGdHamRBc3RTUkdiZklpWFpuMEh6U0VK?=
 =?utf-8?B?a1FYL0dSMkxBQVFBbmloMVlBRFlzWmFTTFNLbFJ5UzFUUW14a1hiamdwcVBi?=
 =?utf-8?B?dzViNWc4UmJaQTBNMW9qZnR5a21Db0haQXJCTWxoM0xnSTlyWVRlbzJhMUZI?=
 =?utf-8?B?MURLVW9hUUh6LytaQmFtd2cybmRtUmErakNpaUUxdy9RcGJoMWxEOXBTa3hr?=
 =?utf-8?B?NjlxTCtqYUNIUE9mTmFjMjViUWw2RXM3V3lSYzNCb044MkFVWmhENGdna25u?=
 =?utf-8?B?REFybFdueTFFem9ndmtnM3lqUEl2SkJ1MjRYNkdLVXJVWHRVTHVzK0QwK0Qx?=
 =?utf-8?B?aHBWeG5ZSFdVZ29FSlR0TVpPdC9CRG8xZTBjOGNCcjVuOHFJUHZtQ21rQnkr?=
 =?utf-8?B?bDM5U0t3UWZBODVpUmNzYm8zL3BwVFZhb2M0NE8xczhLS2xjTEgrVTc3UHM5?=
 =?utf-8?B?NWJrdUxVYmVCM0g5SmY4WlpRRXV4dEhZa1RaSkt1Snh1VDYrbVBXNHFJZU1V?=
 =?utf-8?B?dUNLOUhkOUZKekxhYmlzZnI2bEY5ZW9yY2lHQTg5SmVGN1UzbmV1TGtNK2JX?=
 =?utf-8?B?ZE9JdzhSbEZrbTRJV1lLZUhRYmZGZVBDWW1DT3lTelZwYTJHVVJ0c211Z3pk?=
 =?utf-8?B?QWhCeXhXNmF3RnZZbGlvK3VXZXJjZUNRN3Fzdk5kR1lQNm5KbTZad2laRk9Q?=
 =?utf-8?B?aldDeTB5NVRRQnRrV2ZZTzNhaUpMN212MjMxeTRyU056QVg5cjBVL01NTXZG?=
 =?utf-8?B?SDlTV093KzVuMmpSUVB6NGExQUN6NjByVUNRWDFoczVrOUpHNUVMV1FiQUJa?=
 =?utf-8?B?TzliUWpjaDlENW9vYUt2eExwM29JN21DUWdTcnhmL3ZURmdpSVlva2ZKWEsz?=
 =?utf-8?Q?PSJMko/8U/AgfQAQa2?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: BX7ZLeGeRLE2tx7O1AYnW6fx47lPcTcq7Jj4mwlmpE9lNE9t3XDeSBGZ0ZiYmE9Aq/ubjNd7cX4IVvpZO2WwDClcu4Do4cC1zP1kVe298xTpMZsubCJkmp1XXL0AZkuqx5XzBa2ZQLs15pjCI2HfGxaiUFLAfBhuscPxBiH78PFrA4F6gTicJPsyUGyNtDhXktqmo54btcT+G54YSKqA/gwNxVsGjQlL+45786CS2fCAA1lTVmr4ZXmVBBN1K20VhVrhaCyq1AOogC95dih8iUw2I461QekkWN76nuT17Om+aVvSO6ap4GbTXWfhVmyqiBZnugK53fnUUjxmCuP50Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF57F27BA08.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4eef29c-2ee7-46ac-dec2-08ded05fcb95
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2026 13:11:38.9192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PHIe0x8qy43tdsrFZd4yEdmWYZUZqCSG/LE6drBqHtH3DzJ6QrlwSchi5Y8+NQRpSG5p29mAAgUOIsWLT9TGBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8248
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,SJ5PPF57F27BA08.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 425D56AFB23

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgMTYgSnVuZSAyMDI2IDIzLjA4DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogW1BBVENIIHYyIDAyLzI4XSBkcm0vaTkxNS9kcDogQWRkIHN0cnVjdCBpbnRlbF9kcF9saW5r
X2NvbmZpZw0KPiANCj4gQWRkIGEgc3RydWN0IHJlcHJlc2VudGluZyB0aGUgcHVibGljIHVucGFj
a2VkIGZvcm1hdCBvZiBhIGxpbmsNCj4gY29uZmlndXJhdGlvbi4gVGhpcyB3aWxsIGJlIHVzZWQg
YnkgdGhlIERQIGxpbmsgY2FwYWJpbGl0eSBBUEkgYWRkZWQNCj4gYXMgYSBmb2xsb3ctdXAsIGFu
ZCBieSBEUCBjb2RlIGluIGdlbmVyYWwgdGhhdCBuZWVkcyB0byB0cmFjayBhIGxpbmsNCj4gY29u
ZmlndXJhdGlvbi4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFA
aW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaCB8IDggKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMo
KykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oDQo+IGluZGV4IGM3MWVkZWExNDU4NzguLmMwOTJjODFlZDJlYjYgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oDQo+IEBAIC0xODAwLDYgKzE4MDAsMTQgQEAgc3RydWN0IGludGVsX3BzciB7DQo+ICAJ
c3RydWN0IHJlZl90cmFja2VyICp2Ymxhbmtfd2FrZXJlZjsNCj4gIH07DQo+IA0KPiArc3RydWN0
IGludGVsX2RwX2xpbmtfY29uZmlnIHsNCj4gKwlpbnQgcmF0ZTsNCj4gKwlpbnQgbGFuZV9jb3Vu
dDsNCj4gK307DQo+ICsNCj4gKyNkZWZpbmUgSU5URUxfRFBfTElOS19DT05GSUdfTlVMTCBcDQo+
ICsJKChzdHJ1Y3QgaW50ZWxfZHBfbGlua19jb25maWcpe30pDQo+ICsNCj4gIHN0cnVjdCBpbnRl
bF9kcCB7DQo+ICAJaW50ZWxfcmVnX3Qgb3V0cHV0X3JlZzsNCj4gIAl1MzIgRFA7DQo+IC0tDQo+
IDIuNDkuMQ0KDQo=
