Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6xTCDz3JHmpZVAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 14:14:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 788DE62DE40
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 14:14:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=bTSfRVKT;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D05B10F02D;
	Tue,  2 Jun 2026 12:14:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3683210F02D
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2026 12:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780402489; x=1811938489;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=K/031JSOCrt34XU65v0S0GgsF3wErwdKXvWGBpBSNdU=;
 b=bTSfRVKTiYPzRAJU4MmGzZtVkRp/cy0VKnjNSIDNzZ4wS2AAvvvQQwQJ
 3U15kYYfw4yuSDxspTMrzFKhxYKLTp86MAita+kX85jzb56yae43FsXrW
 tFhMvNkof2lu4JGKgCHup6lXrclDmEIXVVlMR5gFijzZaATqIn0YDXT1j
 kDOiiQq1ol7vWPidHX9a+vtNvEIsQhWd+WMS1XUEtrlYxIkoI6dGK1LIN
 T/z8yLgX47Z8TNjGHL7zNaAvzUH2aVHupN0Xf1asdo4OTatPomay4fwXF
 1tP5DYoUlTnzmIinv8j1Es+e51m+KXxV4ZTYuykG8fO2KvmANee4VdkB2 Q==;
X-CSE-ConnectionGUID: JAhEhzm0RRSlIFQS7bw7Sg==
X-CSE-MsgGUID: XD4BPKEKRV2Rjfmlu06whQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="106630650"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="106630650"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 05:14:49 -0700
X-CSE-ConnectionGUID: LD1rXfLLRCCppEbeyJN3Pg==
X-CSE-MsgGUID: UMa0GuF4Ri2kK5f6wfdm6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="243066371"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 05:14:49 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 05:14:48 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 05:14:48 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.33) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 05:14:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HfOu1MgRxWmZvz6uk33EJlR63iONM51Sv+8x5j0VDit1ouHCGTeyn2ji46EfPaynnHHhrDISNsZTvRX/MGNbhsxqhne/VnPCkrpe99j3PSt7Z74cE75yiRFU+41WZclpgmjiCEK4j/TmIOOyrNjx13Pf3l1DuriaQ/7itOMm47KfuAuTTMUE/aOnqqPebExrjvbGRbyojQ4vwtBKKqPYW1GFZCGTEF2jjgRvzRSZm6pYtQWPpCwumAhUBfK93ZyYOuT5sWt9MonIG8Gi93V7ZR08JVJ1qO/Vm5aCgowmgqmNv7/SKO/wVFzQXVXfRBCtDwIWuxp9jfqopvQpmoBqgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=guqx+6DSYV+auEDsygeHWVBWnaZmFexrOlIuk5PVPLM=;
 b=LkFTpC89+8BWiWjLUlar04Ug4wksJjhWiBbh372XREBocYTzRteCRHnK3RIqmWzQJVgKZfaUycLcVVVbzhdXCucJWiPvms4Ua5iu3PKJIAHJ5d7fSz7e4+oIOr3RJW2c4T6RQu5D7IIQxs1uaF63JIRnbK/LrXwGLQS+VR6kCvQU3RK7xA1iPhJb3Er/0tnM+GlBP9a9FQse9gbu4f9X6HcngZ2037b7W39mR7LquNNVOACy40D1k1zkz3nEOY/0Ylls+1x6WIJUJxC7eZfgL+i7QyEQJzzWPbszsJ5HBQhyjvStv8Hl0ppbudvTbjR3I0ZfEzvfA9LNUmGj4KJxmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by PH7PR11MB8525.namprd11.prod.outlook.com (2603:10b6:510:304::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Tue, 2 Jun 2026
 12:14:40 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0071.015; Tue, 2 Jun 2026
 12:14:40 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [RFC] drm/i915: Do not cancel live requests
Date: Tue, 2 Jun 2026 12:14:31 +0000
Message-ID: <20260602121431.3321203-1-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2P250CA0007.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:10:231::12) To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|PH7PR11MB8525:EE_
X-MS-Office365-Filtering-Correlation-Id: a5088cbb-4806-4c4e-70ec-08dec0a08572
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|11063799006|56012099006|18002099003; 
X-Microsoft-Antispam-Message-Info: iMzyHugKYUzd64yTxEIq4CCWHh8gmzdxisdSenk1L8BDlvMJi+X8DRS265L1d1uA9sGImaZGYLmSvgDSFlC5I3R8lj/CuNwXhM4QSgREnYOuoqSdEHIupyeYy+m/PVzbpHd7CFYR3Qfv9UdxCazFutr+QJ/sXAeymlay949A6zlAsMeHE1XW+b6Qs/cYhP2Nud0SRCvFERr4LD7shL+OPZz65E1OQv9ZdCX5u3NLvWR6fB04+1++Ncdl1CzLkLwvFlWJvd7rC0Frhev/8OTjFjNUz+8Wmld+RwfuJBt3gzl9DeSsrJLzWhbjDDMbhmRTb5EgkJlZ3P6TZhLpsp2kGFU3oCSmhkBmQFQEIjI8RirLGXty25nQzF0n26++WiHfxQA8NqFbcTK9+gpP3xrBW2FUcUMSVuQK6IHiOIeT7TZQmEbJmmQcbJzWdN4D/GD8A3nS+/DztNqBIbx70587RnSRtsayr+2Xafcbz8CQNYfDu9RxkRReIWMJomag+vOEp7QTPnUVOXOq4S+2Nl7kzsN05ZWISbqYvrnUtZRXF6fL9cJ9ArNRRiO5QdZQylk0vAetazENfjeADTIazVRTuG4RmTur8CajbPDU+wMcFdfPFvGaQiM+6v478dB6y+prtZbwmMbLlRpeTxl2pB92mgWmpOtK+X5C+lsJMisg/QlV5ef0QcJEQfhpchuLkGdc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(11063799006)(56012099006)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bvdP4TghtH6avNgZ4JJj7Ns+/AtYIprfYyjjKJ11ePAgZ+OXokTxw5w3c9qh?=
 =?us-ascii?Q?UVI7IzWmW+zoq80b4qcpvYIF8/hWcD4udlpxRdl+rr5VBK9D77yXYGOyFano?=
 =?us-ascii?Q?/9CBHf4azOgzRy4V1QcP8799tM/ECXBXfE3e0zdfiM3/QU1fhgkJH4awu4N2?=
 =?us-ascii?Q?KO+JPuIhLkaeRKYe9qskM0JKDuGfXBPD/UGhWN2h4gVFD+aPJkLT5VvuQpE9?=
 =?us-ascii?Q?fZoi3t1NyMcEKMPIyrslxvWG8IIxTiI3Y/LT3cGjXaofngjjm7XUA3GTMgnu?=
 =?us-ascii?Q?DtkiKyqthcXm+YC92p/0uTGdavKh8GEUU1UV29Vnw4VDVrj1hhUaEzpAJqmT?=
 =?us-ascii?Q?Ohg9TxnMQmkAB0iWk996hE46au3+otdMyxm+95qBw14s/bUwAb0TFTVFyWtP?=
 =?us-ascii?Q?UBxsbgIe1ndbUSInyTSFshC3hSXlAIaqlxJMtq29FwA71X6t4dz/PVaqFbcH?=
 =?us-ascii?Q?ZHQPBfXVLh8SBNwIN5sQN7+o5Xom4TX/UPOiy1driEvcbgchYm3xDoU7XM+h?=
 =?us-ascii?Q?SlosUJVfaqJnkb31dYgkDjB/TpUwLkpIZtn+QC7iPqmN4ueTRr1sa+PqtfyH?=
 =?us-ascii?Q?1WD0u9nDTx0kSAib358de5IOdRiEq8rN3o7fMF0hxMk1WrGgqvrw5wu+79Vl?=
 =?us-ascii?Q?aLCR+tZaTV8IZ7iOEKtE3SxPYBw9JJZsH+WnVMSfMpYVZSkehr3Ni/QSzFfR?=
 =?us-ascii?Q?NbdhOOr0Ani3JA8UtjXODz5SwAuAp1tX8WtMqGEj+4jGdrCGGysRiOP3onSY?=
 =?us-ascii?Q?8u6nDVFZ9G/z0YZhATrxKtnLE5zHHX+LcGIoGTizNtF1wmIAczAN36YpGpLs?=
 =?us-ascii?Q?oqNBvoR2t5cLxYYDbCkw40usanswTrnJfAL+q8kFYEwBQqXrDX5VFN/Vqzqf?=
 =?us-ascii?Q?nA+qBaktpwIiQNT9Wr8HPIaQTDgbwKXDOEELPeGB/8gYD6XcuVGTT2+H00hu?=
 =?us-ascii?Q?Eqxm0sLy1DSo53C3773wac4R0v52K1/919oOYiUsvFtsuNkZaNUdTp/SujUe?=
 =?us-ascii?Q?0kmQALMHA3hoJ+jMWY+umBe/b4fRRL4H7g3Av4XBzSNrWrrDjvu3cYwu/q/f?=
 =?us-ascii?Q?5V7s1Z96XwzwkkHMdcyDcu/8SJ62eLNvx9NxOd+NcKFe1si+EuO/WS3tP+U2?=
 =?us-ascii?Q?RF/CwrdW001gjtifq7khJF8xNB64wtq78fFoKrSxSMq9np1lsv3Df1xsfhCS?=
 =?us-ascii?Q?A2uy43KmD1le3pE16kPKLV4Olv8sDs9Io78YqsNmtiZAQZE4qVVywnDtyyaK?=
 =?us-ascii?Q?NmWomsDaWSCGXehlDCiY3lotDupF7VRqitvTZaDrbYhH0JYLw+Btg76fi3qo?=
 =?us-ascii?Q?YWKqrAxh2uekV75ADp5fdgY59bieLVik8iylNxGlS9U5kliuC30lVaoI2LYa?=
 =?us-ascii?Q?7tX0R97hhFDlvxPipFyp+fCGBqlSqgsvismRspgIi+p/qWyoO5nKEbIq/uy8?=
 =?us-ascii?Q?7RNnYjwDKKjy5J7MVFIVbmeVCE98zP6zdkkCNKjWdl/hTamNAwCyFvu+5dC8?=
 =?us-ascii?Q?wYBvdvBBtkVhx5pr+TvzxFIqPhnJ4OYBaBZjfVgTB4sjpF3utSbcGWUsdO2v?=
 =?us-ascii?Q?8dI1IvqT4rNN4b7xt0DkDtFpRlhUo+80gXlXamg8pBV8OJoT8emor2pOoK3q?=
 =?us-ascii?Q?EqUd6yDTert1ON2jK0PqYhFMziJn+PuggE8fh/sjrBREG6FgV+aB38poT8Z/?=
 =?us-ascii?Q?XxuoPzchfEs01wQrImUbMdWIs0gsvnpZIcxhuPYtsBOwdJQsw86PPTrUqaHz?=
 =?us-ascii?Q?Te/rzYgEQ3W79ggvHKIHAo0eXOJfnmo=3D?=
X-Exchange-RoutingPolicyChecked: aY6voK0hPwIrpofsozznO6xPJtZjVSguHWnXM+FFDq558bc9ZHhqofKMJ2SyMvZyVxO5qqm6dtPcGyx4rwVsbogX4Izjeq2IFpDg6U/zdCox0WX1dV1lTMPCpRf7lMEDr/C96c4VBRXUpBHzmweCeWpQzMDEOzYqHFwAeuVL1qdz3ohIGap391NnXstfwFLBgBlkMfKEDP7wEU2JueM21GA00uZMpCX20R2IdP3NqTxgEyBYXe9uSStznfpFpTYHE4rtQndJMhAFO1OVs78FpAp1lgVY7nH5Ifk2fPG2miUKnQurqHoD5HC/9zhvrAZn0aJOAszmogIpdT8wgWHwdQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: a5088cbb-4806-4c4e-70ec-08dec0a08572
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 12:14:40.2815 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u1X2pntn/cpQnhGKOyfZlMD8hOUnK/W5CWg92nGSu/3a+2i1nUsDHse9BkVCpDqap9pStHA9nJnCU0rpkCezxpq2jHacFqs1Az8+FVFo3fU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8525
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	ALIAS_RESOLVED(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 788DE62DE40

Currently, requests are considered expired after a certain
amount of time runs out (DRM_I915_REQUEST_TIMEOUT). The logic
outright cancels such requests, without regard to them being
processed or preempted. This behavior may be observed with long
running workloads, which are being processed, albeit very
slowly.

Amend the problem by adding a set of time related fields to
i915 request structure and using them to calculate actual
work time the request consumed on the GPU.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_requests.c |  7 +++++++
 drivers/gpu/drm/i915/i915_request.c         | 10 ++++++++++
 drivers/gpu/drm/i915/i915_request.h         |  3 +++
 3 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
index 93298820bee2..24f8d02e6abb 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
@@ -249,10 +249,17 @@ void intel_gt_watchdog_work(struct work_struct *work)
 
 	llist_for_each_entry_safe(rq, rn, first, watchdog.link) {
 		if (!i915_request_completed(rq)) {
+			ktime_t timeout = rq->context->watchdog.timeout_us * NSEC_PER_USEC;
+			ktime_t total = rq->watchdog.total_run_time;
 			struct dma_fence *f = &rq->fence;
 			const char __rcu *timeline;
 			const char __rcu *driver;
 
+			if (i915_request_is_running(rq) ||
+			    (i915_request_started(rq) && total < timeout)) {
+				continue;
+			}
+
 			rcu_read_lock();
 			driver = dma_fence_driver_name(f);
 			timeline = dma_fence_timeline_name(f);
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index d2c7b1090df0..697976f3c7fa 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -676,6 +676,7 @@ bool __i915_request_submit(struct i915_request *request)
 active:
 	clear_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
 	set_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags);
+	request->watchdog.running_since = ktime_get();
 
 	/*
 	 * XXX Rollback bonded-execution on __i915_request_unsubmit()?
@@ -731,6 +732,15 @@ void __i915_request_unsubmit(struct i915_request *request)
 	 */
 	GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags));
 	clear_bit_unlock(I915_FENCE_FLAG_ACTIVE, &request->fence.flags);
+	if (ktime_to_ns(request->watchdog.running_since)) {
+		ktime_t now = ktime_get();
+
+		request->watchdog.total_run_time =
+			ktime_add(request->watchdog.total_run_time,
+				  ktime_sub(now, request->watchdog.running_since));
+		request->watchdog.preempted_at = now;
+		request->watchdog.running_since = 0;
+	}
 	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags))
 		i915_request_cancel_breadcrumb(request);
 
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index b09135301f39..48b619ca6bf4 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -325,6 +325,9 @@ struct i915_request {
 	struct i915_request_watchdog {
 		struct llist_node link;
 		struct hrtimer timer;
+		ktime_t running_since;
+		ktime_t preempted_at;
+		ktime_t total_run_time;
 	} watchdog;
 
 	/*
-- 
2.34.1

