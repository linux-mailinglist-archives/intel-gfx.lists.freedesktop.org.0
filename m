Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOHFKIFl3mmxDgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 18:04:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C490E3FC4E7
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 18:04:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2445810E61F;
	Tue, 14 Apr 2026 16:04:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nERyTeFC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6098B10E61E
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2026 16:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776182653; x=1807718653;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=KQibcnyU3xvpyCH4/87eOMcFNqNUUOQv6BuCLPE3LA0=;
 b=nERyTeFCpIcF/YcCxBw57OXsAyJ7C0FFA8h6T84Qzbfp7Z5spM9rm6+M
 rZpNLxGMxKjHi4QMQ0ODNMtDAYfSZW8E9p1wTDMhTbvxZlq9Piw+7/qjI
 3KF0bE1JAxBlmm9d3Hcr6VwvG7vpQs9yMzb/SAHeXuKRBYKCdMO2Az7Sb
 E6E20Gtv+SoLYnrXnQ9FEYa7jbB17Y2dxDZ4DJzXUMuZGSGAVR94AwauB
 aeE439uqSjJemxBvnyBrAkWZWIYHvXrGVCiGUkDiGDbpy9d2xRB6478Kr
 gRfv1tKhrYyGInIDJrsZT6HkuPNIUvMQXyBWwaFsGqQXJhciLjjPoHRZ/ w==;
X-CSE-ConnectionGUID: O22FQqQbS1KBIxOhs0nvgw==
X-CSE-MsgGUID: 8LV6tn3uTH++cAn/Uguldw==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="77023217"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77023217"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 09:04:13 -0700
X-CSE-ConnectionGUID: 2XUgqd8mT6OM6vfTR4QBGQ==
X-CSE-MsgGUID: mniybyvXTA6pquGBhpXXDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="260572527"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 09:04:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 09:04:12 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 09:04:12 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.62) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 09:04:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KHhWVLY9j9Fm0WQkg7DZzp4FqdMA/1j9BFyww8l4WmDPsdT/PCnQjLcNKydCUzEKlLo0BW9XUspmTUfilbMh3cT7SeAyEvp5CnYbeu4xyK3T+bVoQ/dluCZnW5aIRofS+MQwQse0tKenDd9+88cW/bgHgWo38Q7rSv9i71RWZlXgvfjCUWJrU7hefuyyw3sek3GkBaA1FL8olXChlUkwfEgLklcf1bdachIjArovOyk00BmKrx2DGn6D7vss/I9qZn40H2v5xi1ws+88Ty+mxMnFUPEAd+DOE2XR4BveFyyfBodndRex+77aiy2wOSVcq9lpoSk8lIASy0nLcfwKJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=apItE27hGnlho8qfzlhv0OkFriDHKZ6uL586VvPoFmU=;
 b=J29Iu/zeUn0ikT/Zw4Y2Yy+76mgeh7QDiv92/h1CNs8jibOa9BTDuZbWqfFXuaC5Q7zwmsfXZqO0XykTkEyYYdGFCP/BLKzslh8MD2vf+OX07zAyZKSBlcow74rY8zYeoaMUlc9mAbxRxXNVxG3UhRKY3EQCK0cZhIqtjEh9NG/KY8OvT2fGZB1P7BCeft3VxygAaPAG2/nM2uNByKr66XWDsrAMtWgJEMbpLIwbZ/IJ9QYQvpc5ab1TzewaOo+MtUOcfCc7yrWjqcJ9mnrtD/0mOG/vM/QY/KFusPcQOAruOmZ2rej6jtvLgAIfMsbbjAB7pfiNouCCp+8C2SPWdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB5205.namprd11.prod.outlook.com (2603:10b6:510:3d::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Tue, 14 Apr
 2026 16:04:10 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%3]) with mapi id 15.20.9769.046; Tue, 14 Apr 2026
 16:04:10 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/4] drm/i915/bw: Extract platform-specific parameters
In-Reply-To: <20260410173355.GE6301@mdroper-desk1.amr.corp.intel.com>
References: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
 <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-1-23c53afa7db0@intel.com>
 <5a2fefe3f3d7ee92d3cc1bca1ffe88370d54c822@intel.com>
 <20260409231256.GB6301@mdroper-desk1.amr.corp.intel.com>
 <87ik9yx4kx.fsf@intel.com>
 <20260410173355.GE6301@mdroper-desk1.amr.corp.intel.com>
Date: Tue, 14 Apr 2026 13:04:04 -0300
Message-ID: <87pl41wmtn.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0039.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::14) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB5205:EE_
X-MS-Office365-Filtering-Correlation-Id: bd79de4a-f155-490e-cceb-08de9a3f76d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: LB/sTCoG7Hkax7/KGc/BWSvDj3weCmWoRXmM0hHAUcTwSobFZgYTe7UsdBPKVlnL+n78EF3J7yJNjma4iKUn+r1GH8MrPBaINw1Nk88CHr2ovPiWvtxkJRX/vbpicxXB+j5ABAvI5gQuHAYBxt8Vn6xcYcUgBUQop1qgZV5TxGN/G8SHi8JFIZx2AsZd6RS2ywKUe2w5D/f+b/zFC3yKNtEwdKnkGu0kpC5eoWDALdshILRlJOQThF6gdp1U86VOuYHrEQEpTVAk8RxqpDreiuWe9b7dV64i/dnSmSpwJNkHYP6bUc1XZzwGUAgUX7tAui/N2euNyFBOkbbN3GGZshHqmriBESV43igb9jTfxylaFr8OVgmXSXu7cAmkNqRAHIR0EAsGUbnZ21Er4jhfHCW4xIQyV9+4ZcXwxT68C0oWSv8VJ7JneDirLEE5i4jX4vwlamTT40LA4BSYFw3VwuaJZx35JBm7U1bByM5eYPInnEpWg1H08D/pgfw3IKBgaBZsP3+KWGgLuSrS/hvA1H2lebERiUt5pU4W4BJLzz7g45v89Naob/xj9XyXzTd2E09JuiT+Cl4gLGk3wdT1Iyjr3+klDUTBpUch4dRh4dThIPS/Tz+3f/GVDQfYEBPzojtqC3NR5d4ieEEy1NRvMO50TWuLV42HDpORBpyUgVrB4qKIXydyHx8er8rpkSdCh6bWGm9ziytyzRjz1RjYwIOg50Qwf9ltjyh5SxjMoTU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DH8JA6ii9v6meu7TIzIHizr3JYXDEaiu6gYUgUsuOU1SNY+nd/Jra2as4i4P?=
 =?us-ascii?Q?GUxOwVdiS0K/fslrfzi9ewfCjbtH8uQ9f1B/Y8k8/herUPZw842gYC0rUR3S?=
 =?us-ascii?Q?YdxgjTDi1Ozo3Tlv8r4Y6xYPz046h0jIWJKnrZUmfsutwAWvsaX0vscG1kir?=
 =?us-ascii?Q?kLokmECd2/JUVcfA63rXzhFA+7HCXhjDogUTYXB8SlgE4jyp2JU1FKWeoWt9?=
 =?us-ascii?Q?9km2ojDGFPI/jWb2Kili8lPOkZ302fvgGAN+DFHMg8UGfwdlMIuG7O/h18cz?=
 =?us-ascii?Q?9JF7d5/eyji49NK3tq2rvoWi5baD8C5Wac96L45eCoW69GXVO3LCzRTMH74o?=
 =?us-ascii?Q?RskuRmiHb5yhiAcafnqNsuExbkzCDavGcHfT0cvzn0UzWDzxPBRFR0LmM6fu?=
 =?us-ascii?Q?0cJCwNR0hiJc8fH9bokQ92kv+RE76Q1oGSjxOp2/iKn4U6NVf8YWvY39U0tx?=
 =?us-ascii?Q?Btg7VcAKMHCn2vJ1bbaf6w9Sg18HRG5JUY0o8RpHHNXrotBPnN2d5QTTiQON?=
 =?us-ascii?Q?WWhfybMeajOvtViLKRPdcC8UTu3xcOSAQVblAzh+7tN+zfnIyCc/ET5yLwjb?=
 =?us-ascii?Q?mc0bFL6ddWLhPUA8fcfd9RSAKZDNLds+XfYbblypHhfzORKzBeBWbmcJvxJ5?=
 =?us-ascii?Q?QPj16JbwEWtXlhOy+Imd4gHiV+g/+XO2lh+KsSSgag6pjoDMDRWgtvrU5RjW?=
 =?us-ascii?Q?51o8uKPvu+pnD2brPpLmKI8fRP7J5dWdNZntUWWso2GAMIf5VTx9etsRuT2u?=
 =?us-ascii?Q?Z4q4Kb/oYecJiyFBBGKgp/RIDNvlHlZc0gfWiKHeiujkZ76d8qLIJPadOmt/?=
 =?us-ascii?Q?uSWte2G59ktRjILV7HDMaYSEzwICnZlLNGHoJmjofsZZZ7t2ep5WLHG6a5yq?=
 =?us-ascii?Q?NyXl8up6MTvPMoMYeTAhvUSLrnjOnwXBVgMlG09Lu27rH/LTpzTe6hkGT6ca?=
 =?us-ascii?Q?EFCijPai71pIDkZvCQ2WacW6dfhgbwU8np58bOcjUqV2nVy2+agaDhqxoP4J?=
 =?us-ascii?Q?4hepp22AHjx6ZiwbeiKuBNU7b1GJ+829f7BNmQlvDmoM9jrhKb5dcsNG4MgR?=
 =?us-ascii?Q?SKhdZrF5myL3Fpprv7JZgjWIlb98wsmIadfkFbUMp4e9yvXl0PUAuN4wO6mZ?=
 =?us-ascii?Q?jFm0NMqqjakZuYqCdIiUK9I5r/xPotOROZN69CXCrjjMmYmWbGVCGavDbCQO?=
 =?us-ascii?Q?4TKmJRYTw0w1GzZ4fJKz2/7LJVZRbC877BYRwJNpHtMIkE0UldLfmyh/S7M8?=
 =?us-ascii?Q?dA02lSKJ1yvGrosFoZ2mW3J93blK1NCZj4DDvH78LekYjBtrDdWQzQKmCKEj?=
 =?us-ascii?Q?VvDL1kpmd+OXPjiwClwQwlmNCfpYD9y7mpgPFsfCPvIVL9CPQ9GjGrs6DsyO?=
 =?us-ascii?Q?6y4AJt+TX9SD7q8yvOritm9nmSUgDeeKbBzrPbZEs3IXiPE6voKcj4jFt64y?=
 =?us-ascii?Q?MYWiMXDlrHaHE1HrzdKMPcvQGBa/EmzB320RLKSC5fuysVK+P1CuwxhPqa4U?=
 =?us-ascii?Q?AnDKBVQtPkGL21C5/r4PYvV/bxDpGHQNxzBJnQWR0+u0+4RkLRuPSz50eIet?=
 =?us-ascii?Q?3fryJiE1zC+e+RMMHRturzfJhJv9Ng6132k/9EED4ma9cw2tU/bHky26Wxsx?=
 =?us-ascii?Q?eDGJCOctGWA/vQ0mzQZuaulhqnJ4U7BJLB0Fd9FaCNMFOalDiZM78fQEhVsB?=
 =?us-ascii?Q?kTetUOaFQyrs1MP6lMXwWF5WJcI7oVKipR0ntnXqeStzz3Kj8lYfUOkxE+wk?=
 =?us-ascii?Q?4XCQLJ9orw=3D=3D?=
X-Exchange-RoutingPolicyChecked: Sjxj6hC3vKQnpxWu+Lpfv+xpHuG2kWx9+pWokBdGr6hI4NTBY+Q0GnOAbBY3HUxoQMoW3IOXfL887xpb5E1KZ9HCY288TbYuWv844Q8ErtjiQ3Zm3hrf5fTCJauiavyNw5CnY07Y1jN0t2SjLEE7Npg1M08E/O9zCqR97t+nLMIoszh5VRdPlHhVCJFQfnpd01H6HlopnQHnKhTjKOwYDHmJSsSjBYC8MwF7zs4DOaHe9qVvfH1MfyRyqc2OIHIvPcsbHTd+CW/9jhabXJs+9Iovk6N9I49cRqj28Zz8BbCID+Xd76BwKXONpHZjtjgVZb8WyC04UURe/kf3ChyKOw==
X-MS-Exchange-CrossTenant-Network-Message-Id: bd79de4a-f155-490e-cceb-08de9a3f76d2
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2026 16:04:10.1745 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mYq0I2ZgeSTRosxoYQmuOeoH2k4FWjs05dMzIP2RHN/cZ4710fgBwqEnm5clHpP/5qMk1VCIYETWmL1mHFZnTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5205
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:matthew.d.roper@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.975];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C490E3FC4E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Matt Roper <matthew.d.roper@intel.com> writes:

> On Fri, Apr 10, 2026 at 11:39:10AM -0300, Gustavo Sousa wrote:
>> Matt Roper <matthew.d.roper@intel.com> writes:
>> 
>> > On Wed, Apr 08, 2026 at 10:16:42PM +0300, Jani Nikula wrote:
>> >> On Wed, 08 Apr 2026, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> >> > We got confirmation from the hardware team that the bandwidth parameters
>> >> > deprogbwlimit and derating are platform-specific and not tied to the
>> >> > display IP.  As such, let's make sure that we use platform checks for
>> >> > those.
>> >> >
>> >> > The rest of the members of struct intel_sa_info are tied to the display
>> >> > IP and we will deal with them as a follow-up.
>> >> >
>> >> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> >> > ---
>> >> >  drivers/gpu/drm/i915/display/intel_bw.c | 174 ++++++++++++++++++++++++--------
>> >> >  1 file changed, 133 insertions(+), 41 deletions(-)
>> >> >
>> >> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>> >> > index 474438fc1ebc..ed840b592eff 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> >> > @@ -375,77 +375,170 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
>> >> >  	return dclk;
>> >> >  }
>> >> >  
>> >> > +struct intel_platform_bw_params {
>> >> > +	u8 deprogbwlimit;
>> >> > +	u8 derating;
>> >> > +};
>> >> > +
>> >> > +static const struct intel_platform_bw_params icl_plat_bw_params = {
>> >> > +	.deprogbwlimit = 25,
>> >> > +	.derating = 10,
>> >> > +};
>> >> > +
>> >> > +static const struct intel_platform_bw_params tgl_plat_bw_params = {
>> >> > +	.deprogbwlimit = 34,
>> >> > +	.derating = 10,
>> >> > +};
>> >> > +
>> >> > +static const struct intel_platform_bw_params rkl_plat_bw_params = {
>> >> > +	.deprogbwlimit = 20,
>> >> > +	.derating = 10,
>> >> > +};
>> >> > +
>> >> > +static const struct intel_platform_bw_params adl_s_plat_bw_params = {
>> >> > +	.deprogbwlimit = 38,
>> >> > +	.derating = 10,
>> >> > +};
>> >> > +
>> >> > +static const struct intel_platform_bw_params adl_p_plat_bw_params = {
>> >> > +	.deprogbwlimit = 38,
>> >> > +	.derating = 20,
>> >> > +};
>> >> > +
>> >> > +static const struct intel_platform_bw_params bmg_plat_bw_params = {
>> >> > +	.deprogbwlimit = 53,
>> >> > +	.derating = 30,
>> >> > +};
>> >> > +
>> >> > +static const struct intel_platform_bw_params bmg_ecc_plat_bw_params = {
>> >> > +	.deprogbwlimit = 53,
>> >> > +	.derating = 45,
>> >> > +};
>> >> > +
>> >> > +static const struct intel_platform_bw_params ptl_plat_bw_params = {
>> >> > +	.deprogbwlimit = 65,
>> >> > +	.derating = 10,
>> >> > +};
>> >> > +
>> >> > +static const struct intel_platform_bw_params wcl_plat_bw_params = {
>> >> > +	.deprogbwlimit = 22,
>> >> > +	.derating = 10,
>> >> > +};
>> >> 
>> >> In the above, "plat" feels like tautology, since they're all prefixed by
>> >> platform acronyms.
>> >
>> > "soc" might be more consistent with what we (and various hardware docs)
>> > do to refer to "stuff that's outside the graphics/media/display IP and
>> > doesn't relate to GMD_ID version numbers."  Technically "soc" is a bit
>> > of a misnomer too since a lot of our recent platforms are multi-chip and
>> > not truly SoC's anymore, but the intent is still understandable.
>> 
>> Yeah. I intetionally prefered to use "platform" as a general term to
>> refer to either SoC or multi-chip package.  Do you prefer that we name
>> the struct type intel_soc_bw_params?
>> 
>> What about intel_display_bw_params that is added later? Is that a good
>> name? I thought intel_ip_bw_params would be a bit vague, since we have
>> different types of IPs (display being one of them) in the platform.
>
> Personally I think "soc_bw_params" vs "display_bw_params" seems like a
> similar distinction to what we have elsewhere in the driver (especially
> if we add a 1-sentence comment above the structure clarifying what the
> origin/source of those parameters is.  But I'll leave it up to Jani and
> the other display experts to make the call since they're the ones who
> work with this code the most.

Jani, any preference here?

--
Gustavo Sousa

>
>> 
>> >
>> >> 
>> >> > +
>> >> > +static const struct intel_platform_bw_params *get_platform_bw_params(struct intel_display *display)
>> >> > +{
>> >> > +	const struct intel_platform_bw_params *ret;
>> >> > +
>> >> > +	if (display->platform.dgfx)
>> >> > +		goto dgfx;
>> >> > +
>> >> > +	ret = &icl_plat_bw_params;
>> >> > +	if (display->platform.icelake ||
>> >> > +	    display->platform.jasperlake ||
>> >> > +	    display->platform.elkhartlake)
>> >> > +		return ret;
>> >> 
>> >> What's the point of assigning and returning ret?
>> >> 
>> >> Why not just return &icl_plat_bw_params; directly?
>> >> 
>> >
>> > It looks like the intent might have been to let people keep copy/pasting
>> > the same pattern and have the fallback at the end always default back to
>> > whatever the "newest" one was if a proper match wasn't found.  But I
>> > agree that the handling here feels awkward and a simple if/else ladder
>> > would be preferable.
>> 
>> Yeah, allowing developers to easily add new platforms without too much
>> churn was the intention here.  I knew this style was unconventional, but
>> I thought the intent justified it (and IMO the code is still readable,
>> although admittedly a bit weird).
>> 
>> If that's not acceptable, would something along the lines of below be
>> accepted?
>> 
>>     if (display->platformOB.dgfx) {
>>         if (...)
>>              return platform_a_params;
>>         else if (...)
>>              return platform_b_params;
>>         else if (...)
>>              return platform_c_params;
>>         
>>         default_params = platform_c_params;
>>     } else {
>>         if (...)
>>              return platform_d_params;
>>         else if (...)
>>              return platform_e_params;
>>         else if (...)
>>              return platform_f_params;
>>         
>>         default_params = platform_f_params;
>>     }
>>     
>>     do_warning();
>>     return default_params;
>
> Yeah, I think a traditional if/else ladder like this is best.  I don't
> think we even need to track a 'default_params' variable; we can just
> directly return some recent platform as a fallback at the end too.  If
> the fallback winds up not getting updated when we add new platforms, I
> don't think that really matters since there's no real guarantee that
> falling back to incorrect n-1 platform numbers is better than falling
> back to incorrect n-2 platform numbers.
>
> If we've screwed up and forgotten to add the parameters for a new
> platform, then that's going to be something that's flagged almost
> immediately by CI and will be quickly fixed long before the platform
> ever leaves force_probe.
>
>
> Matt
>
>> --
>> Gustavo Sousa
>> 
>> >
>> >
>> > Matt
>> >
>> >> > +
>> >> > +	ret = &tgl_plat_bw_params;
>> >> > +	if (display->platform.tigerlake)
>> >> > +		return ret;
>> >> > +
>> >> > +	ret = &rkl_plat_bw_params;
>> >> > +	if (display->platform.rocketlake)
>> >> > +		return ret;
>> >> > +
>> >> > +	ret = &adl_s_plat_bw_params;
>> >> > +	if (display->platform.alderlake_s)
>> >> > +		return ret;
>> >> > +
>> >> > +	ret = &adl_p_plat_bw_params;
>> >> > +	if (display->platform.alderlake_p)
>> >> > +		return ret;
>> >> > +
>> >> > +	ret = &adl_s_plat_bw_params;
>> >> > +	if (display->platform.meteorlake ||
>> >> > +	    display->platform.lunarlake)
>> >> > +		return ret;
>> >> > +
>> >> > +	ret = &ptl_plat_bw_params;
>> >> > +	if (display->platform.pantherlake ||
>> >> > +	    display->platform.novalake) {
>> >> > +		if (display->platform.pantherlake_wildcatlake)
>> >> > +			ret = &wcl_plat_bw_params;
>> >> > +
>> >> > +		return ret;
>> >> > +	}
>> >> > +
>> >> > +	goto missing;
>> >> > +
>> >> > +dgfx:
>> >> > +	ret = &tgl_plat_bw_params;
>> >> > +	if (display->platform.dg1)
>> >> > +		return ret;
>> >> > +
>> >> > +	ret = &bmg_plat_bw_params;
>> >> > +	if (display->platform.battlemage) {
>> >> > +		const struct dram_info *dram_info = intel_dram_info(display);
>> >> > +
>> >> > +		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
>> >> > +			ret = &bmg_ecc_plat_bw_params;
>> >> > +
>> >> > +		return ret;
>> >> > +	}
>> >> > +
>> >> > +missing:
>> >> > +	/*
>> >> > +	 * Use parameters from the most recent platform,
>> >> > +	 * but raise a warning.
>> >> > +	 */
>> >> > +	drm_WARN(display->drm, 1,
>> >> > +		 "Platform-specific bandwidth parameters not found, using possibly incompatible default values\n");
>> >> > +
>> >> > +	return ret;
>> >> 
>> >> I don't understand at all why the function is written the way it
>> >> is. Seems like it should be a regular if-ladder like we have, with zero
>> >> gotos.
>> >> 
>> >> > +}
>> >> > +
>> >> >  struct intel_sa_info {
>> >> >  	u16 displayrtids;
>> >> > -	u8 deburst, deprogbwlimit, derating;
>> >> > +	u8 deburst;
>> >> >  };
>> >> >  
>> >> >  static const struct intel_sa_info icl_sa_info = {
>> >> >  	.deburst = 8,
>> >> > -	.deprogbwlimit = 25, /* GB/s */
>> >> >  	.displayrtids = 128,
>> >> > -	.derating = 10,
>> >> >  };
>> >> >  
>> >> >  static const struct intel_sa_info tgl_sa_info = {
>> >> >  	.deburst = 16,
>> >> > -	.deprogbwlimit = 34, /* GB/s */
>> >> >  	.displayrtids = 256,
>> >> > -	.derating = 10,
>> >> >  };
>> >> >  
>> >> >  static const struct intel_sa_info rkl_sa_info = {
>> >> >  	.deburst = 8,
>> >> > -	.deprogbwlimit = 20, /* GB/s */
>> >> >  	.displayrtids = 128,
>> >> > -	.derating = 10,
>> >> >  };
>> >> >  
>> >> >  static const struct intel_sa_info adls_sa_info = {
>> >> >  	.deburst = 16,
>> >> > -	.deprogbwlimit = 38, /* GB/s */
>> >> >  	.displayrtids = 256,
>> >> > -	.derating = 10,
>> >> >  };
>> >> >  
>> >> >  static const struct intel_sa_info adlp_sa_info = {
>> >> >  	.deburst = 16,
>> >> > -	.deprogbwlimit = 38, /* GB/s */
>> >> >  	.displayrtids = 256,
>> >> > -	.derating = 20,
>> >> >  };
>> >> >  
>> >> >  static const struct intel_sa_info mtl_sa_info = {
>> >> >  	.deburst = 32,
>> >> > -	.deprogbwlimit = 38, /* GB/s */
>> >> >  	.displayrtids = 256,
>> >> > -	.derating = 10,
>> >> > -};
>> >> > -
>> >> > -static const struct intel_sa_info xe2_hpd_sa_info = {
>> >> > -	.derating = 30,
>> >> > -	.deprogbwlimit = 53,
>> >> > -	/* Other values not used by simplified algorithm */
>> >> > -};
>> >> > -
>> >> > -static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
>> >> > -	.derating = 45,
>> >> > -	.deprogbwlimit = 53,
>> >> > -	/* Other values not used by simplified algorithm */
>> >> >  };
>> >> >  
>> >> >  static const struct intel_sa_info xe3lpd_sa_info = {
>> >> >  	.deburst = 32,
>> >> > -	.deprogbwlimit = 65, /* GB/s */
>> >> >  	.displayrtids = 256,
>> >> > -	.derating = 10,
>> >> >  };
>> >> >  
>> >> >  static const struct intel_sa_info xe3lpd_3002_sa_info = {
>> >> >  	.deburst = 32,
>> >> > -	.deprogbwlimit = 22, /* GB/s */
>> >> >  	.displayrtids = 256,
>> >> > -	.derating = 10,
>> >> >  };
>> >> >  
>> >> >  static int icl_get_bw_info(struct intel_display *display,
>> >> > @@ -453,6 +546,7 @@ static int icl_get_bw_info(struct intel_display *display,
>> >> >  			   const struct intel_sa_info *sa)
>> >> >  {
>> >> >  	struct intel_qgv_info qi = {};
>> >> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
>> >> 
>> >> Perhaps it would be better to pass this in instead of every function
>> >> having the call.
>> >> 
>> >> Nitpick, "plat" is not an abbreviation I'm fond of.
>> >> 
>> >> >  	bool is_y_tile = true; /* assume y tile may be used */
>> >> >  	int num_channels = max_t(u8, 1, dram_info->num_channels);
>> >> >  	int ipqdepth, ipqdepthpch = 16;
>> >> > @@ -469,7 +563,7 @@ static int icl_get_bw_info(struct intel_display *display,
>> >> >  	}
>> >> >  
>> >> >  	dclk_max = icl_sagv_max_dclk(&qi);
>> >> > -	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>> >> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>> >> >  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>> >> >  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
>> >> >  
>> >> > @@ -499,7 +593,7 @@ static int icl_get_bw_info(struct intel_display *display,
>> >> >  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>> >> >  
>> >> >  			bi->deratedbw[j] = min(maxdebw,
>> >> > -					       bw * (100 - sa->derating) / 100);
>> >> > +					       bw * (100 - plat_bw_params->derating) / 100);
>> >> >  
>> >> >  			drm_dbg_kms(display->drm,
>> >> >  				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
>> >> > @@ -524,6 +618,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>> >> >  			   const struct intel_sa_info *sa)
>> >> >  {
>> >> >  	struct intel_qgv_info qi = {};
>> >> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
>> >> >  	bool is_y_tile = true; /* assume y tile may be used */
>> >> >  	int num_channels = max_t(u8, 1, dram_info->num_channels);
>> >> >  	int ipqdepth, ipqdepthpch = 16;
>> >> > @@ -557,7 +652,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>> >> >  	dclk_max = icl_sagv_max_dclk(&qi);
>> >> >  
>> >> >  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
>> >> > -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>> >> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>> >> >  
>> >> >  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>> >> >  	/*
>> >> > @@ -602,7 +697,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>> >> >  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>> >> >  
>> >> >  			bi->deratedbw[j] = min(maxdebw,
>> >> > -					       bw * (100 - sa->derating) / 100);
>> >> > +					       bw * (100 - plat_bw_params->derating) / 100);
>> >> >  			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
>> >> >  							  num_channels *
>> >> >  							  qi.channel_width, 8);
>> >> > @@ -663,10 +758,10 @@ static void dg2_get_bw_info(struct intel_display *display)
>> >> >  }
>> >> >  
>> >> >  static int xe2_hpd_get_bw_info(struct intel_display *display,
>> >> > -			       const struct dram_info *dram_info,
>> >> > -			       const struct intel_sa_info *sa)
>> >> > +			       const struct dram_info *dram_info)
>> >> >  {
>> >> >  	struct intel_qgv_info qi = {};
>> >> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
>> >> >  	int num_channels = dram_info->num_channels;
>> >> >  	int peakbw, maxdebw;
>> >> >  	int ret, i;
>> >> > @@ -679,14 +774,14 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
>> >> >  	}
>> >> >  
>> >> >  	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
>> >> > -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>> >> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>> >> >  
>> >> >  	for (i = 0; i < qi.num_points; i++) {
>> >> >  		const struct intel_qgv_point *point = &qi.points[i];
>> >> >  		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
>> >> >  
>> >> >  		display->bw.max[0].deratedbw[i] =
>> >> > -			min(maxdebw, (100 - sa->derating) * bw / 100);
>> >> > +			min(maxdebw, (100 - plat_bw_params->derating) * bw / 100);
>> >> >  		display->bw.max[0].peakbw[i] = bw;
>> >> >  
>> >> >  		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
>> >> > @@ -814,10 +909,7 @@ void intel_bw_init_hw(struct intel_display *display)
>> >> >  		else
>> >> >  			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
>> >> >  	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>> >> > -		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
>> >> > -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
>> >> > -		else
>> >> > -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
>> >> > +		xe2_hpd_get_bw_info(display, dram_info);
>> >> >  	} else if (DISPLAY_VER(display) >= 14) {
>> >> >  		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
>> >> >  	} else if (display->platform.dg2) {
>> >> 
>> >> -- 
>> >> Jani Nikula, Intel
>> >
>> > -- 
>> > Matt Roper
>> > Graphics Software Engineer
>> > Linux GPU Platform Enablement
>> > Intel Corporation
>
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
