Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DC09F3B3C
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 21:44:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 029A110E7A8;
	Mon, 16 Dec 2024 20:44:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hgxLczaN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEB9910E7A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 20:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734381864; x=1765917864;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=JaJBgQAYl9j/OQYfUCgzaRCzFAXR3YpXdUd6gw2q0t0=;
 b=hgxLczaNyHcRC8OkKrlb7kvAbZYbqXN4E6ydlLvhTdX8qvmevDKvLPCM
 k3OqUkWv5vlFzTj9E/TgQQo5er7TNHprBr1VWFPsSFhuZjnGw4uxoJzmJ
 x5O99/mBXESqXEhYjeSZldMzVoti8VrytBuOWw7t7Xi38pqs6T1QlUaDW
 +9g+LRs+W1jbCuHCM96Q/5e//JVbwzNd0u1OFz6tJeAaTREQ/g6ICAg8z
 yQowk8Fmk/W4HhJ/6Pww8HWhJ5bqmG53SFlfHw80iVNzt0brcEvo1BdYj
 HauGiygDcUWyFDJ0JSOHoWvMTa6KrHd0/S2pdZ8YWJqUTX6qINn1wpyfm Q==;
X-CSE-ConnectionGUID: J8n0acQuTPWsxUygA2clPg==
X-CSE-MsgGUID: ljrADrRNTDubdaapQYBYOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="22375563"
X-IronPort-AV: E=Sophos;i="6.12,239,1728975600"; d="scan'208";a="22375563"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 12:44:24 -0800
X-CSE-ConnectionGUID: Msy9rcVjS+qWZ268A5C7qw==
X-CSE-MsgGUID: V93nhUbpTPmiIMZB+6G13Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,239,1728975600"; d="scan'208";a="102342727"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Dec 2024 12:44:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 16 Dec 2024 12:44:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 16 Dec 2024 12:44:23 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 16 Dec 2024 12:44:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XaY3ubb/Rx7Y9clDZkK1Oisr4/Gs4ACL4HPhs+Ly5YWgyCHsVMV7hQs4YymtWU4aRGiLuFDxmXZ5fEapRQYUAA3ykyd6v66nvisXFGOgNBHp2FE93H4Eh4Y9JC1Ymzuqzpo0t0ndE1fePMY1R0OazU0bt0oSxLfeyxa8IhnJ9/2QbRf5W63gzdBDbDMBexVLOUM+aHBFdi2ZA2idXBRoifWYqb+FDu4bCDkkLvP2qz/WtAncuRWYb5ov4z+VTfAPIsZpHE31kMBcLT5/Hz14YW29zIFVTcaPCeEjm2DpkDVG85bxLKiLeAvFFnchXs0y0rZkJfHHARLAizHYbnE33Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nJ/Ph0rWrwl7RGc6JKqZnVcjdGzj+J4xerg9uTSQI0w=;
 b=fB3/LVESRzFn7juZTIBL9SxvlazrDjCpecFF0f087iAFL4ngACqcKItseDd6H1BgipzMCU/lpW/vSkODUwE8Tx4F0zhM969H7Ok5SWn4kEKrqEUzed07F2Qlrlw1gIHQWgWwShzJhwT5Rlj7+wvsOSP7MrWbYU3jQQyBG7SIdGGB+YZWBj1F+SEOpbGMw/lEI7jbDp1ndBtjVFgfTQzCMezgmNgLfVV4Y4PaV2J/hpgftk9ZdvHJnlfO+2qa+JNzyNDTJLMsB7bWtFCuZ3o9LyfreSG2gsrdcmHu4l+EHyp1aRUaxY9QR1roP+tzYzkAe8f7yxo3EhQLrxGLQkwoeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by SJ2PR11MB7573.namprd11.prod.outlook.com (2603:10b6:a03:4d2::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.20; Mon, 16 Dec
 2024 20:44:19 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8251.015; Mon, 16 Dec 2024
 20:44:18 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 0/2] Enable GuC SLPC default balancing strategies
Date: Mon, 16 Dec 2024 15:44:02 -0500
Message-ID: <20241216204404.1621540-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0229.namprd03.prod.outlook.com
 (2603:10b6:303:b9::24) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|SJ2PR11MB7573:EE_
X-MS-Office365-Filtering-Correlation-Id: c5a671dd-bf44-4c29-ea4f-08dd1e126943
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SY4L1AZKbvU6079bU3efhi+iOPKqQlP82MTk0M1aYpUBKKq/Cm8pVsNPF9d7?=
 =?us-ascii?Q?gfxbPfLgkm5Vo2SE8RoVDncO9exKJeWyDKdffGF0ne5AzpXe0b0VqE1Q6fIN?=
 =?us-ascii?Q?3fLCLZ4jnSdFobp+6jEhRGKLGFJ0AVDBDBj45AdbRGEj4wZ0LDL9Hh0t94FF?=
 =?us-ascii?Q?PwHTehDiRkSyfFiyfq9Zg3ePJ82PIKQ4YbX0iF6QRX5wG1qv/quMdoS/V+1B?=
 =?us-ascii?Q?XtGXVvjJIZgcJOgJzY01aKxcE+1hg5GxZMDNNyNoRQeU/XWnd3Exw4clVNh5?=
 =?us-ascii?Q?YGx1CwX+uJWrOgGZgWfoImrNp+j1UzII2p7wSjuACxaXVYOXH6bESNRkvN9A?=
 =?us-ascii?Q?rTmZX72jsrrtJs9WUGAnGJLwHyTEsJhKGl4R7N2kg77GUQgG6ne0XNSWlwHY?=
 =?us-ascii?Q?FZVovmZZVRpbP2RVgpGwPMCcpBgxpPYzejBZM18DZE7lZZtP0zdrrZsQnYM1?=
 =?us-ascii?Q?X9GTNUzJbDQsXOoZEyqABRaySl7QA8cZx36s1OSelorL43f96EzXLue4jpge?=
 =?us-ascii?Q?CnkN7o6LVaTJUn+52MaMxtbUZilZ4tcff9FxAZ5BRioIS/HW1X8qmbBUYPek?=
 =?us-ascii?Q?Me0OOMUpSD0d4JbzDG/jAmy0nA/GgpTpuDtdzs4MwF55Ky9GqGXeYfZSanLm?=
 =?us-ascii?Q?v2QYMxsadrolJ24CPzmSVjF3Q5RDl/8sqf4TH2LjIJnFAP0UJQ7cqproBqAK?=
 =?us-ascii?Q?k8HJiHgtazTzDWkrU/JEC+aqizSKo+cu6D70aTyqpu1h7XCbibOeN4yJWiSD?=
 =?us-ascii?Q?zCyTAGrYmpMx9hbQRIMDfyud3SwqdHLrhSORk6qXy/RWWHn8IC8rtXK32OWg?=
 =?us-ascii?Q?h/JnSnFC7B6bBJDrGFNuv0wcXfOKU6w+Yc4lJESV2aS+pUsjv9RNO6S9QIn9?=
 =?us-ascii?Q?GCMbn+90wpOvLB9QEDQ8GNWuSKJ4hTljq42uClOlepY13XvhoPoOa+R+go9P?=
 =?us-ascii?Q?7i+2+Uo1IGCefTSpUEHDX0V1Z9ww80W6usMLOmiju5+iaI5rN9pF/exIYwMW?=
 =?us-ascii?Q?SS7BcYLhUZWrwCQHzC0WVymgtGzJg/3H1eimVbILrRiNyCjLtWEW2LvR26kb?=
 =?us-ascii?Q?Ns2hNRhlUYRynqMDNsfs3oXtND1IM5LKVgkQ8f9O/0zyPFCXaB2MSiNNhoGO?=
 =?us-ascii?Q?IH6Jy5qfzZHwARW+HXaFmHoj4stdVleXLyUMKUToDg4F20+Kh5AopKBdWANc?=
 =?us-ascii?Q?v0vgB4hkWEIzWLRulRE/bdfG1GgrMXDce4czG8J3TMNDFiqSw4m0LPdIgEZ6?=
 =?us-ascii?Q?6RRrDTNWmBdJqQxezAWpc7nAu/EZBIRUityKPUC3yXw0wa6FkzKPWjRNn7gh?=
 =?us-ascii?Q?q+v6Zs9ew3bSqhuzDbzldiyhv8QZjrIZAbQgbdSyFQgG6bdKljETazm49jNX?=
 =?us-ascii?Q?OkWtyfoUO6cCUR9kq1JGy7SVIUcb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+ujq6gFz03FNMcm9CP/JP8a+jbHGWJR97CiIkH7PTWhDgRlvRH94VVlAfcgp?=
 =?us-ascii?Q?JZDAi/fhkQj8atv9UpDJ1PFFjEK71WWwtDq7Bu4UVyJ//jAqdx6ns1XnvZeM?=
 =?us-ascii?Q?YaQ3CfjDDKvx4OdlOpSvfqk0Z7S3kttXyR8HNnU4kUcP1jE698UpLXMzG2UK?=
 =?us-ascii?Q?13H2yolRLN3wvFb1aYY/VzC5UHklZEimNgxE6Ey0C2v6RuaLlTNQhj3yzEr+?=
 =?us-ascii?Q?b8QH7Dni7T5VqfpetPXtu//Qu4y5CIFzksZYIUX6edsji5P5wiI4xS1sauck?=
 =?us-ascii?Q?+cNLzFBnPIcbZtIEcoiWO+9/a8i+rssvBpi+7/8GKxq0zZIG3Pkq+A9pD0ed?=
 =?us-ascii?Q?U/IYGOYu4Yk3aslK8VtqJRzEqxFcgQ4fsQng8SFj4NWXAkFXZJgRc/SQnTBN?=
 =?us-ascii?Q?BQJEDpORW1T0UzNby6c/vHzZo8Xs8Q5pKAHYd4QeXncU4p2aHK/3D+ssaP2G?=
 =?us-ascii?Q?fpyhj194d21zWWWNePAKuTNtLN/sC/jQ7aFBn/tncCjD7+3qOr68nPyR8Ktb?=
 =?us-ascii?Q?hbMoT4qydqPtJXEi4NQEd7CAd6iHJxQIhATD6Um/U84ZnfKQNsrNksMzpzvA?=
 =?us-ascii?Q?tyzAdIuVi3+n6qUfUQDW6lZ06PFXBOBQffg8ICyJTDixikB6WzTh/acFEw+3?=
 =?us-ascii?Q?xaclrjKa15BWS95vG4gKetlCYBexU/Bcc44JrSTxJsN4dWL8VVN3x5iYA+WD?=
 =?us-ascii?Q?ECZv3JpBqwLPP64E/pqRaboFJzmf4x8HhduTziA3BWEZ775i/fFe5NA+268a?=
 =?us-ascii?Q?M5/dHaLs5xMAfriFBrlWiPXKGeqvogBThTGaBVROtnUIUEsHHRy3RoH0i+ta?=
 =?us-ascii?Q?WMnX/uyMw8dqfxtbSjuj33/KElnM4OcDEhiOdFzji/UBOZWgOneEafo4iu9b?=
 =?us-ascii?Q?wk90Pr4vj819sikZhQJmFncfTaiX261uo40hVwG10cKkXi4+/2yk4Oj+qR/e?=
 =?us-ascii?Q?4jOrzx6kwvkrETR0WMCo+NO9415b20JjzLBPL37c5sAuBNH/hpbNwAGKvuge?=
 =?us-ascii?Q?VqZres52T3chsc3cnNc7b7Xvk0ZUJigz2N5tYn6cftXCzgdurCOBfdLPdbqS?=
 =?us-ascii?Q?WHnq8IvrcyGAlQm2IrlUCTmAmzSi2MQ0weYeUagRaFSuZXe2pPDp3z5yJPEA?=
 =?us-ascii?Q?wuqlcNhTfcHTT+25iGUEMu6kXb7HW75v5IAQeOuoqFUwnqDLueOVN/F6pZ2P?=
 =?us-ascii?Q?P7a53UAPQ6WjNDiAMXSkFp0UNooLGeAe3wYGQy6ZpjZjHwQBEzn+81J6kqC7?=
 =?us-ascii?Q?yBrTIc4WOEyAPc909GQ/De6pgihdAYJs2KhSPD72s9rsmvD1x8ft2J7OdvcT?=
 =?us-ascii?Q?GExikpzJIeinby8dFNo8Jp2gZGiPgKytR/61c3IAbAJKmjJRYVgrEWANVpRq?=
 =?us-ascii?Q?HHyBFOmYc+UlmA8D/eMPvBxeIbF90D2NSluHu9bnMByC0bBoitlb3UWY8lBM?=
 =?us-ascii?Q?qZddFmxI3N0IhLhNVcnmy/KKIgPPyH8MPVmEt4ezgFxyXyTrJcI3KXqoX+Du?=
 =?us-ascii?Q?nxjCy0wqcfefYF2qXMShXXGpifPle/UNrMRUIh87MVI7eSPIZn+BvIuvo2TE?=
 =?us-ascii?Q?pv22qhJiWieTh5xw/tPYPrZpdbnJ393/60X/1eglInLSJEgjKLt/1j4+R0r1?=
 =?us-ascii?Q?Fg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c5a671dd-bf44-4c29-ea4f-08dd1e126943
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2024 20:44:18.4473 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uJoDcQN8DZMXnL8M5FplZex2wfsC+bb4CiTpMx0G5i0YDYJWqZ7s6w9yFm+w9MQwgQQtAGEeWAsBAaN/sCAt7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7573
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

They are complementary to waitboost and they can potentially improve
performance in some very limited cases like when system is in high
cpu and gpu usage and under TDP constrains.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Rodrigo Vivi (2):
  drm/i915/guc/slpc: Enable GuC SLPC default strategies
  drm/i915/guc/slpc: Print more SLPC debug status information

 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 34 ++++++++++-----------
 1 file changed, 17 insertions(+), 17 deletions(-)

-- 
2.47.1

