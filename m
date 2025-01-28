Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0AFA21E3D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 14:58:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3765D10E09D;
	Wed, 29 Jan 2025 13:58:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=cs-soprasteria.com header.i=@cs-soprasteria.com header.b="AwY3+o+j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from EUR02-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur02on2085.outbound.protection.outlook.com [40.107.241.85])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EB8510E3F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2025 08:54:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nkyvGbpVDQHNa/P450fdkqms6KJLbxqwe8PiRjaFmGm3p/j+SOqImFn+kk4AcQtojEfCgl9Ngv5RHdsdk6fGwxH5PZnPIzD1vhmeAGuzoAkmOrN+6cbV2aYyfGzjwJPiu52UJ7TrxfKd1AQWtK4iO5wWHTWq9kgI+4nO3Oq/RoOIDBAp/erc/CWs5CuWBBmFZIHzDhH6IBP+xIP7n9C/GsOZcAIj+p36GeUdP2fbdAlb0Suyg3s1ixF8/REC/tzBrYTgs4urJRsgL8IqaI1U3401Xo6BREPyQWz8S89mw29cNgBVeCueHFwlx7U4HF+UQ1s0wb+mQT736J26963Kuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6XQwyXmtK8jBWronUpFunDsO7klv0+oc4FRVy8J3pMg=;
 b=DYX2ou09VEL2vz54nlDRXdMWR/KdFRUAm8SXKmsDQrjorUuAEzIu7u0WVkKWSWAiBlrnt+kSEFKktbu0KCRrj7/Uw5uA5tfOYRvy57LiH9bXF2JKkURWwUhtthZL4NU7vYrSobNUkf7dq+B1n99NEDi05TfuT1nahUYrVYbvWdD8GTVfytAeq0hBiiaE4vQ6ml8V23r37Tp5F5MZ39onidT+X+D200VDIeklSxKrIK92pYeeZOizzcyz4Xb/QgdsPVMZaUndHw6f5uA787ZcG37CblQqjBy89LZiMkCrc0d7EHksalZidb/mNS0GpTepv/9tk8mNJ3FJ3s8ovCNeQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cs-soprasteria.com; dmarc=pass action=none
 header.from=cs-soprasteria.com; dkim=pass header.d=cs-soprasteria.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs-soprasteria.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6XQwyXmtK8jBWronUpFunDsO7klv0+oc4FRVy8J3pMg=;
 b=AwY3+o+jfhiCohXddG5cW+op+v+NZyz6MHrnaKZws5heXc9M/br45h5i7n5nsRsC86K9MGB0GTIIEPISLbe6kBeFd6cBoCE+oN8SK6/Pq7n7PkUx2t5kNXX3GiM8fVb7LJfCza4h/BbrnJYtBN4jAtgSMyhm4E0raxfClvkbwmAHRGAyqe7YlFy+Hj5+BQPNG5offJJgf0/OleemIQYjQjp2ORxjS14/aUojq4unji7r5VY6acJRTMlxBlrbPB41v9lJfDgz21x3HlUGxI+MixDnZpcNU9bwpY+xvogyaxlp53lelBY5E38NKkVrcDWt+cJNe7iHuWM86/sdfzfnug==
Received: from DB9PR07MB10003.eurprd07.prod.outlook.com (2603:10a6:10:4cc::12)
 by DB9PR07MB9222.eurprd07.prod.outlook.com (2603:10a6:10:458::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.23; Tue, 28 Jan
 2025 08:54:10 +0000
Received: from DB9PR07MB10003.eurprd07.prod.outlook.com
 ([fe80::5d9c:f90c:e9a:6c68]) by DB9PR07MB10003.eurprd07.prod.outlook.com
 ([fe80::5d9c:f90c:e9a:6c68%3]) with mapi id 15.20.8377.021; Tue, 28 Jan 2025
 08:54:10 +0000
From: MARDI Youness <youness.mardi@cs-soprasteria.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: CHEVRIE Thomas <thomas.chevrie@cs-soprasteria.com>
Subject: TLB Invalidation time out on i915 SR-IOV passthrough
Thread-Topic: TLB Invalidation time out on i915 SR-IOV passthrough
Thread-Index: AdtxYfvpEuianPVxR221o/nToMwNpQ==
Date: Tue, 28 Jan 2025 08:54:10 +0000
Message-ID: <DB9PR07MB1000353F67A27FEC494902005DAEF2@DB9PR07MB10003.eurprd07.prod.outlook.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_7bd1f144-26ac-4410-8fdb-05c7de218e82_ActionId=1fc138e9-c872-45ca-9df3-75266b07ea42;
 MSIP_Label_7bd1f144-26ac-4410-8fdb-05c7de218e82_ContentBits=0;
 MSIP_Label_7bd1f144-26ac-4410-8fdb-05c7de218e82_Enabled=true;
 MSIP_Label_7bd1f144-26ac-4410-8fdb-05c7de218e82_Method=Standard;
 MSIP_Label_7bd1f144-26ac-4410-8fdb-05c7de218e82_Name=FR Usage
 restreint;
 MSIP_Label_7bd1f144-26ac-4410-8fdb-05c7de218e82_SetDate=2025-01-28T08:51:32Z;
 MSIP_Label_7bd1f144-26ac-4410-8fdb-05c7de218e82_SiteId=8b87af7d-8647-4dc7-8df4-5f69a2011bb5;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cs-soprasteria.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB9PR07MB10003:EE_|DB9PR07MB9222:EE_
x-ms-office365-filtering-correlation-id: 30c83fb4-71a2-49be-4182-08dd3f795501
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|13003099007|8096899003|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?PT9OnVde3ERTdDGNLpAkoOE6UQyVcOs+bQbEyge3QEGgapNKGw09/ipzbehh?=
 =?us-ascii?Q?XggPbBPMCLtBqagPjw79zEYaCDZ2pFpVFvQJYHGe+H/t2hMD3OGl026Gg4yf?=
 =?us-ascii?Q?OVJib/bRtlDPQ03kgM5Si+DXqz7u4mnb0YxWEz+rrk9eXEIKyHNnu5eopdQZ?=
 =?us-ascii?Q?iys5wpQT14dqJd40gzYB8Y/RC+g6H03sgilD5MD9KtW/PhmLBE3jatC5QheU?=
 =?us-ascii?Q?fisj/cG1Y4HUXvCyLpfKJkPnnSBnHXAxMkjon4uRQBv8N46w0fjv4FxuKIIV?=
 =?us-ascii?Q?4jFYSclQmll696SDdomx4NmymVpg4Tlu+H69VV8FNIbJ9xs765NG27XSEWwj?=
 =?us-ascii?Q?0iBEYbgTrc/NFNfSmT02guuMo+GpTwJkxv5Ks7yknWC8NjUjrioVv58Z93BD?=
 =?us-ascii?Q?zLe9G1PIdxh6TZERiVPlkb6c7VmLCurDZ80G8Efuu4fOK7RQCeQ6h1QqH71U?=
 =?us-ascii?Q?GxP6UKCTYMfbqJDVWvrH86oWl7Xf4y9nqZX1m+/xzu82aLvXVFEtM1NnzXa/?=
 =?us-ascii?Q?sdX7KIe4xDxWtH/LRJha3cB+mNhpqNnf11QvjdXmISkTrJqGUJOhdEYTGwy+?=
 =?us-ascii?Q?nnl22bnXRJU0Ug4szkJVWfCHHhPBZ+1nWd/P+wadRThSOFGuGsSdlYfvnZyP?=
 =?us-ascii?Q?7t/qb78pAIIqVoJ4Fj7p9t54sRJ3LGJGmnb+Xy0O7DwYvULatGhujAJN6CZQ?=
 =?us-ascii?Q?wn0xRdhW5cqI364wm+H6CspK4aEdIi32h8PCjADOcUAy4J3U0pa/zdVwO3Sr?=
 =?us-ascii?Q?dTNmypKFlp+wlsXPdSyyJFP0a0TGBz8qM944coszF3PUBQWTks0W5lvIUOYE?=
 =?us-ascii?Q?oLmyLEAp+iH/KyPgrxZIYdwxyEwcpYxjfjp9NcuXBPUq/pHUTnSKlvNCBjLE?=
 =?us-ascii?Q?gBb5auIy6vsav2A9P1eJP4uzpHhAtEit7UuOIM+Yvcfr6Zb4DP6SHykH2Hjs?=
 =?us-ascii?Q?l5LnNwTzhzE+BQJdhqBMETWNX8cXqwIpgSQBYZFJslGSYmIg4XxWXOib7Za+?=
 =?us-ascii?Q?JkKdbMM026IVY3tExLMb8RwfVHQCXIDYR/Od8CBUE2r6kbsLjgyrLhRtQB1q?=
 =?us-ascii?Q?gh+IysYBS7dSS42FQ/eL1n+LWhfZwtDuJbZTAmlSnQQoQ1aLWmjQAyZ8ivAM?=
 =?us-ascii?Q?fAgS9sRu7jIl+XDxasp9p5vhztnxyFkR9gc8WTFY28iC4QS/qWvN6qOfsOlf?=
 =?us-ascii?Q?xYD93Ww11wa5vqEkukr1XhcfRQAJuZynDLqcZBE+ffr79scFhc43ekP2Wa5L?=
 =?us-ascii?Q?UnYIAewfrswojcc3wvY1TkY5/hDZfRL9kPq6UtlsYyjc9zX/5WmZyP+btUHZ?=
 =?us-ascii?Q?r/2++TZTmvXEu/48ERHY5ywz8rhYjJp419O+Evklv83SkilVftbGOiOSahnq?=
 =?us-ascii?Q?2uCb18vJF24i1rCNv+A2F8wqd0AKd76llmmRpTMC3EJjO8mYFg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR07MB10003.eurprd07.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(13003099007)(8096899003)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dqhGb7ZtsmuqaAperVb1YmwAaRFFeZMYAJsaQNCNBrIaIG+ZfHkapYr6gfL3?=
 =?us-ascii?Q?RgcH6Zr5Rb3US2XMV85VHfUNGijHq3twiatY5waaITIrL9uo+diXcc6DCShp?=
 =?us-ascii?Q?DLOlizu4NDTijDr8ycvriPTAgVKbnabbVFToTvJIrh0Sny8AGM6MbCaNTSsP?=
 =?us-ascii?Q?SzGTzomaJXEu8Y/dKXOprAhhqKeYU3uUUS6mkRezFtFLmGAIghvJmHzLHrgl?=
 =?us-ascii?Q?cZ9jju8+s6xArMM1rN7nvXj95Wgc17wKidPctOLFWG1szhXSzA9+uc5l8gAW?=
 =?us-ascii?Q?pKH4bvwF4GPA9Se0SmMZqmWKo8tLFLJKFj6AeLti40By9r/RKECijdY/Tq1p?=
 =?us-ascii?Q?TWSl7OhF9ZHbSITGNRXAZpnCxgRzOMDNCpJKizjadqQmv9ml+8GzNhjyoeXE?=
 =?us-ascii?Q?F3UGsLOyXDBgKt4Uirio3Xh1cVDts+t1T/RcU5abg6hO5qySjEQBCz1S8ii6?=
 =?us-ascii?Q?Z/1Z8qNDZVhk2GZ+5YPvWZNWQUcJl3ZDMVGNLlskkmuzaa6cGfZ3GR12gAtr?=
 =?us-ascii?Q?ZjqP/RqlA/QllCj6Tz/bjxwhT9k3k9jvn8XgbcNwV6JzZ/oFoYn76+PTFZY3?=
 =?us-ascii?Q?v2tARbGxGqEgzVkx2sozbxPaIlkM9T1eOkz0vPlht878ahkESgxm8yEzbVDE?=
 =?us-ascii?Q?p6SLr6GpA3jfs9kfHPrRAO9pYkL9P5ODbJ6bRIlMFgN8cLJrh/DgXv/fEDPs?=
 =?us-ascii?Q?DRKIO/9CsnYLQ9MS6cu+PiEoLghe21S9qZIyG/ECjuaLu4RCz4qYmBAraVtt?=
 =?us-ascii?Q?ivumUDz98CBDwrDMaGhNB1UqN5zy2OZqLsSUH15OdZbT+X2y+4tjHl9DKp/W?=
 =?us-ascii?Q?xL5wwOsHSLax08gfcvukpedl3VKuSjBgWeDUxtuymj8Y/0iPpeOgLv8fLHyT?=
 =?us-ascii?Q?kClqsGpJqoKZsLvXyPszk7FUH+gMMVoKAt55qHuf+1bIhB7elH/BFdaM/elE?=
 =?us-ascii?Q?D11PrntvD/aAEZu/v8vfyAayJG72bUstXcYUOxJz8S9hntrFtgbhF1++QtWZ?=
 =?us-ascii?Q?CmwWb8fvLvBuISwUAmlto9gdyzUV5K1u5EEWrtVEA5aI6hzLOfWsM1w49lG+?=
 =?us-ascii?Q?NeOw91EYI6oLr5ssPljBZkDqS8/k9nZoURKeBiKwTKgQVXmmcVtiO6QjGXkz?=
 =?us-ascii?Q?dejA1FUyUBPmGp96e9cfh1Oeuj8K9C58MIiVAYtKHXA6DUXGMFwL633x4tPg?=
 =?us-ascii?Q?xMHUJ6HTmS+n7yRVmzZOWMyQWXcjIdHH2LgwBgPTeSuFI5ZF6V1mm9cXdePN?=
 =?us-ascii?Q?LQi5vw8mrQkzlJbyyMxOo054iilesMfQSs5O2GiMnGeAspL+dBPino946DLR?=
 =?us-ascii?Q?IYlEuw2SF3fLM7QJXer0kQpM6U/tLUZPohtOqC7eFOwWWBd3AnrT0RDenicX?=
 =?us-ascii?Q?d1L6t+bvlZ9BNUrLpX0nv7QQ26lQ/gqPNBssuTZazrsQGjdPjatrlKoSJHZY?=
 =?us-ascii?Q?kKiKr8BA2Fx53jS4XBAJuNPlERiwNF/qzsyytiElrHYMQnp4l6QbxrpodXqx?=
 =?us-ascii?Q?3PB28ARG1jS+XL3C4qW475sBYZ3luG5EVfnkHw/OUYSYPlTJxFBsQ59C8q9j?=
 =?us-ascii?Q?Ds3Emq+omWYjmcajIX55FoQrhS+CMnMeHbVLqpo7hicx1PsDhVczaojyut54?=
 =?us-ascii?Q?jA=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_DB9PR07MB1000353F67A27FEC494902005DAEF2DB9PR07MB10003eu_"
MIME-Version: 1.0
X-OriginatorOrg: cs-soprasteria.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR07MB10003.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30c83fb4-71a2-49be-4182-08dd3f795501
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2025 08:54:10.5761 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8b87af7d-8647-4dc7-8df4-5f69a2011bb5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ATyD4VPozq5KCokuA+ubBmFSGjjJlKVruCOm2xV8MLbWB0055ZoBVoyXjt4ZeFvR31/BIulaoHIU1bIeLOWJZtO5itZtZR64G9+ZzIdXYjNnrPO1hhEDfMgvPy6r3/RD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR07MB9222
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 04
X-MS-Exchange-CrossPremises-AuthSource: DB9PR07MB10003.eurprd07.prod.outlook.com
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-messagesource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-originalclientipaddress: 93.17.236.2
X-MS-Exchange-CrossPremises-transporttraffictype: Email
X-MS-Exchange-CrossPremises-disclaimer-hash: 0a291ef45dbeaddd3c2a8ba60f43906764fc4f3e495eff2ecd40117e05115c44
X-MS-Exchange-CrossPremises-antispam-scancontext: DIR:Originating; SFV:NSPM;
 SKIP:0; 
X-MS-Exchange-CrossPremises-processed-by-journaling: Journal Agent
X-OrganizationHeadersPreserved: DB9PR07MB9222.eurprd07.prod.outlook.com
X-Mailman-Approved-At: Wed, 29 Jan 2025 13:58:54 +0000
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

--_000_DB9PR07MB1000353F67A27FEC494902005DAEF2DB9PR07MB10003eu_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello,

Could you help us on this issue: https://github.com/intel/linux-intel-lts/i=
ssues/54

Host environment
Operating system: Gentoo Base System release 2.14
OS/kernel version: https://github.com/intel/linux-intel-lts/tree/lts-v6.6.3=
4-linux-240626T131354Z
Architecture: x86_64
QEMU flavor: qemu-system-x86_64
QEMU version: latest qemu (master branch)
CPU: 12th Gen Intel(R) Core(TM) i7-1270P
igpu: Alder Lake-P
firmware: https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-fi=
rmware.git/snapshot/linux-firmware-20241110.tar.gz

Emulated/Virtualized environment
Operating system: Windows 10 21H1


Description of problem
After setting up SR-IOV (kernel compilation, kernel cmdline, vfio-pci drive=
r attribution to the new pci..)
I've got my two new pci.


00:02.0 VGA compatible controller: Intel Corporation Alder Lake-P Integrate=
d Graphics Controller (rev 0c)
DeviceName: Onboard IGD

Subsystem: Hewlett-Packard Company Alder Lake-P Integrated Graphics Control=
ler
Kernel driver in use: i915

00:02.1 VGA compatible controller: Intel Corporation Alder Lake-P Integrate=
d Graphics Controller (rev 0c)
Subsystem: Hewlett-Packard Company Alder Lake-P Integrated Graphics Control=
ler
Kernel driver in use: vfio-pci

00:02.2 VGA compatible controller: Intel Corporation Alder Lake-P Integrate=
d Graphics Controller (rev 0c)
Subsystem: Hewlett-Packard Company Alder Lake-P Integrated Graphics Control=
ler
Kernel driver in use: vfio-pci

I gave one of those pci to my VM with this qemu cmdline:

-cpu host,migratable=3Don,hv-time,hv-relaxed,hv-vapic,hv-spinlocks=3D0x1fff=
,hv-passthrough,hv-vendor-id=3DIrisXE
...
-device vfio-pci-nohotplug,host=3D0000:00:02.1,id=3Dhostdev0,bus=3Dpci.4,ad=
dr=3D0x0

Sometimes it working properly when I start the qemu cmdline but most of the=
 time I've got those kernel errors and a GPU hang:

    kernel [ 2252.208134] i915 0000:00:02.0: [drm] ERROR GT0: GUC: TLB inva=
lidation response timed out for seqno 9679
    kernel [ 2252.208134] i915 0000:00:02.0: [drm] ERROR GT0: GUC: TLB inva=
lidation response timed out for seqno 9679
    kernel i915 0000:00:02.0: [drm] ERROR GT0: GUC: TLB invalidation respon=
se timed out for seqno 9679
    kernel i915 0000:00:02.0: [drm] ERROR GT0: GUC: TLB invalidation respon=
se timed out for seqno 9679
    ....
    kernel Fence expiration time out i915-0000:00:02.0:renderThread22381:6e=
0!
    kernel i915 0000:00:02.0: [drm] GT0: GuC firmware i915/adlp_guc_70.bin =
version 70.13.1
    kernel i915 0000:00:02.0: [drm] GT0: HuC firmware i915/tgl_huc.bin vers=
ion 7.9.3
    kernel i915 0000:00:02.0: [drm] GT0: HuC: authenticated for all workloa=
ds
    kernel i915 0000:00:02.0: [drm] GT0: GUC: submission enabled
    kernel i915 0000:00:02.0: [drm] GT0: GUC: SLPC enabled
    kernel [ 2730.991019] i915 0000:00:02.0: [drm] GPU HANG: ecode 12:1:85d=
fbfff, in renderThread [22381]
    kernel [ 2730.991084] i915 0000:00:02.0: [drm] renderThread22381 contex=
t reset due to GPU hang


It mostly appears when Qemu is starting..
Any help would be appreciated, thanks a lot

Best Regards,

Youness MARDI



C2 - Usage restreint

--_000_DB9PR07MB1000353F67A27FEC494902005DAEF2DB9PR07MB10003eu_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FR" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:bre=
ak-word">
<p style=3D"font-family:Tahoma;font-size:8pt;color:#CF022B;margin:5pt;" ali=
gn=3D"Left">
</p>
<br>
<div>
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Could you help us on this issue=
: <a href=3D"https://github.com/intel/linux-intel-lts/issues/54">
https://github.com/intel/linux-intel-lts/issues/54</a><o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Host environment<o:p></o:p><=
/span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Operating system: Gentoo Base S=
ystem release 2.14<br>
OS/kernel version: </span><a href=3D"https://github.com/intel/linux-intel-l=
ts/tree/lts-v6.6.34-linux-240626T131354Z"><span lang=3D"EN-US">https://gith=
ub.com/intel/linux-intel-lts/tree/lts-v6.6.34-linux-240626T131354Z</span></=
a><br>
<span lang=3D"EN-US">Architecture: x86_64<br>
QEMU flavor: qemu-system-x86_64<br>
QEMU version: latest qemu (master branch)<br>
CPU: 12th Gen Intel(R) Core(TM) i7-1270P<br>
igpu: Alder Lake-P<br>
firmware: </span><a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git=
/firmware/linux-firmware.git/snapshot/linux-firmware-20241110.tar.gz"><span=
 lang=3D"EN-US">https://git.kernel.org/pub/scm/linux/kernel/git/firmware/li=
nux-firmware.git/snapshot/linux-firmware-20241110.tar.gz</span></a><span la=
ng=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></b>=
</p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Emulated/Virtualized environ=
ment<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Operating system: Windows 10 21=
H1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></b>=
</p>
<p class=3D"MsoNormal"><b><u><span lang=3D"EN-US">Description of problem<o:=
p></o:p></span></u></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">After setting up SR-IOV (kernel=
 compilation, kernel cmdline, vfio-pci driver attribution to the new pci..)=
<br>
I've got my two new pci.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">00:02.0 VGA compatible controller: Intel Corporation Alder Lak=
e-P Integrated Graphics Controller (rev 0c)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">DeviceName: Onboard IGD<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9"><o:p>&nbsp;</o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">Subsystem: Hewlett-Packard Company Alder Lake-P Integrated Gra=
phics Controller<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">Kernel driver in use: i915<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9"><o:p>&nbsp;</o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">00:02.1 VGA compatible controller: Intel Corporation Alder Lak=
e-P Integrated Graphics Controller (rev 0c)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">Subsystem: Hewlett-Packard Company Alder Lake-P Integrated Gra=
phics Controller<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">Kernel driver in use: vfio-pci<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9"><o:p>&nbsp;</o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">00:02.2 VGA compatible controller: Intel Corporation Alder Lak=
e-P Integrated Graphics Controller (rev 0c)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">Subsystem: Hewlett-Packard Company Alder Lake-P Integrated Gra=
phics Controller<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">Kernel driver in use: vfio-pci<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt"><=
o:p>&nbsp;</o:p></span></i></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I gave one of those pci to my V=
M with this qemu cmdline:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">-cpu host,migratable=3Don,hv-time,hv-relaxed,hv-vapic,hv-spinl=
ocks=3D0x1fff,hv-passthrough,hv-vendor-id=3DIrisXE<o:p></o:p></span></i></p=
>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">...<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">-device vfio-pci-nohotplug,host=3D0000:00:02.1,id=3Dhostdev0,b=
us=3Dpci.4,addr=3D0x0<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sometimes it working properly w=
hen I start the qemu cmdline but most of the time I've got those kernel err=
ors and a GPU hang:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt"><=
o:p>&nbsp;</o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">&nbsp;&nbsp;&nbsp; kernel [ 2252.208134] i915 0000:00:02.0: [d=
rm] ERROR GT0: GUC: TLB invalidation response timed out for seqno 9679<o:p>=
</o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">&nbsp;&nbsp;&nbsp; kernel [ 2252.208134] i915 0000:00:02.0: [d=
rm] ERROR GT0: GUC: TLB invalidation response timed out for seqno 9679<o:p>=
</o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">&nbsp;&nbsp;&nbsp; kernel i915 0000:00:02.0: [drm] ERROR GT0: =
GUC: TLB invalidation response timed out for seqno 9679<o:p></o:p></span></=
i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">&nbsp;&nbsp;&nbsp; kernel i915 0000:00:02.0: [drm] ERROR GT0: =
GUC: TLB invalidation response timed out for seqno 9679<o:p></o:p></span></=
i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">&nbsp;&nbsp;&nbsp; ....<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">&nbsp;&nbsp;&nbsp; kernel Fence expiration time out i915-0000:=
00:02.0:renderThread22381:6e0!<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">&nbsp;&nbsp;&nbsp; kernel i915 0000:00:02.0: [drm] GT0: GuC fi=
rmware i915/adlp_guc_70.bin version 70.13.1<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">&nbsp;&nbsp;&nbsp; kernel i915 0000:00:02.0: [drm] GT0: HuC fi=
rmware i915/tgl_huc.bin version 7.9.3<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">&nbsp;&nbsp;&nbsp; kernel i915 0000:00:02.0: [drm] GT0: HuC: a=
uthenticated for all workloads<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">&nbsp;&nbsp;&nbsp; kernel i915 0000:00:02.0: [drm] GT0: GUC: s=
ubmission enabled<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">&nbsp;&nbsp;&nbsp; kernel i915 0000:00:02.0: [drm] GT0: GUC: S=
LPC enabled<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">&nbsp;&nbsp;&nbsp; kernel [ 2730.991019] i915 0000:00:02.0: [d=
rm] GPU HANG: ecode 12:1:85dfbfff, in renderThread [22381]<o:p></o:p></span=
></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:10.0pt;co=
lor:#4E95D9">&nbsp;&nbsp;&nbsp; kernel [ 2730.991084] i915 0000:00:02.0: [d=
rm] renderThread22381 context reset due to GPU hang<o:p></o:p></span></i></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">It mostly appears when Qemu is =
starting..<br>
Any help would be appreciated, thanks a lot<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best Regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Youness MARDI<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
<br>
<p style=3D"font-family:Tahoma;font-size:9pt;color:#CF022B;margin:5pt;" ali=
gn=3D"Left">
C2 &#8211; Usage restreint<br>
</p>
</body>
</html>

--_000_DB9PR07MB1000353F67A27FEC494902005DAEF2DB9PR07MB10003eu_--
