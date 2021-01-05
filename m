Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F13EA2EA69A
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 09:34:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DC1189402;
	Tue,  5 Jan 2021 08:34:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5803892D5
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 08:34:53 +0000 (UTC)
IronPort-SDR: N/DPdo74ak4QwIoaIF9zZfaLV35ClmZhxtW3AzKKI5w4gkblWrMTP6P/0eK/KBQyswnJsREy7S
 x2zUwzYaBNiA==
X-IronPort-AV: E=McAfee;i="6000,8403,9854"; a="164775240"
X-IronPort-AV: E=Sophos;i="5.78,476,1599548400"; d="scan'208";a="164775240"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 00:34:51 -0800
IronPort-SDR: n+hTdUWgbXUzlisYXKGx297SRcXv+Bohd4uUTCRseNclOv3qpcl7nNDVZ3yyilJQSUgBe508Iu
 rDJV+3c2aZwQ==
X-IronPort-AV: E=Sophos;i="5.78,476,1599548400"; d="scan'208";a="346199536"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 00:34:49 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 13:49:58 +0530
Message-Id: <20210105081958.7187-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 0/1] converging intel igfx and dgfx opregion
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

     +---------+                            +---------+
     |         |                            |         |
     |  igfx   |                            |  dgfx   |
     |         |                            |         |
     +----+----+                            +----+----+
          |                                      |
          |                                      |
          v                                      v
+---------+-----------+        +-----------------+----------------+
|                     |        |                                  |
| intel_get_asls_opreg|        |  intel_get_{spi,pci}_oprom_opreg |
|                     |        |                                  |
+------+--------------+        +------------------+---------------+
       |                                          |
       |                                          |
       |       +---------------------------+      |
       |       |                           |      |
       +------->   intel_opregion_setup    +<-----+
               |                           |
               +---------------------------+
 
i915 requires igx and dgfx converging interface for intel opregion setup and
extracting the vbt from opregion (mailbox #3 or mailbox #4).
 
dgfx uses standrd oprom to store opregion image and CSS image.
CSS image is used for oprom signature verification and opregion image stores
VBT and other stuff.

This is the RFC proposal to start a discussion to get the opreg for igfx and
dgfx separately and have a converging function intel_opregion_setup to get the
vbt and setup the opregion.

dgfx can get the oprom by pci or spi interfaces, earlier in past there were
some BIOS related issues, which has erased PCI oprom mappings due which pci_map_rom
has failed to get the oprom.  Let's first read the oprom by PCI interface and in case
of failure fall back to SPI interface.

Requesting community to provide suggestion and feedback on above proposal.    

Thanks,
Anshuman Gupta.
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
