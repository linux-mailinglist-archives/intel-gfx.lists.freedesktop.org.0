Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA52A9C0AA
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 10:17:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0A4110E8B5;
	Fri, 25 Apr 2025 08:17:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="b24ML1bc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 131CD10E8BF
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 08:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1745569050;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KCYBdpwfjCOhXvT2DzVINMJSRWNfDi2B6w/Q4Y3NEy8=;
 b=b24ML1bcw3jcx52x25mm1NO1g9Azpvs14sIQ4jKfsM5SOwXI7b8WXmkEbKbwho4pm9ctPl
 viwSN+H+folEotg+iSQBgl48771YxOalHaSwfJyxx6yf1GlX7HRKLILMJyzlD8pZZh8ZNV
 CTm6Icd1qS2D5iZPiwj8uUkFUVAv/yc=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-474-WDTzuWvEObmdDtEgK72FLw-1; Fri, 25 Apr 2025 04:17:27 -0400
X-MC-Unique: WDTzuWvEObmdDtEgK72FLw-1
X-Mimecast-MFC-AGG-ID: WDTzuWvEObmdDtEgK72FLw_1745569046
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-39c1b1c0969so1244840f8f.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Apr 2025 01:17:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745569046; x=1746173846;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KCYBdpwfjCOhXvT2DzVINMJSRWNfDi2B6w/Q4Y3NEy8=;
 b=aBaxvPc2hN2UTHGTDRr9HCvwF0ukaCfMUfDjkdD/tt2yC7/uFRfMtsizIyUSt3C574
 EGyq/Uj7MAJx6x0HbVctH8bVJfz+pAYkPpGCd9SBPCeItn9JzsZAg7F8nHm0QhSd2RfZ
 mGn1Y0VKFoHwbu+6jmleQHoDX/BxLaQEHy1wqiLryQ1cL/fAow38J3zsDxhUV4EtT8FG
 zqAtNXX59wrhEiZaPmAfJkoAe1Hsoit5lY/3Y/5+NwRyDUENe/CO8a5ihtJ05oJ5J9LT
 lRe15t2/8+M2AWBPJfaFQlB0VpIdaNpCXB7ThONmewgK5Knc2KeqBmFckYjwSNLzJZsR
 B9Ag==
X-Forwarded-Encrypted: i=1;
 AJvYcCWb53q9wa1FJ2Iwen31TqcMQKb0HPWMdIasuVxfHbAp7fdbB3sgq3bA9xcY74KltPL71wIWqV/q/JQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwiTc3lqWj/KSyjWDcxUq9bdG8Meg6ck21G71Mg+upCWEDPDka5
 UArOXTsaNCzFvLuldBG9frJCnPUsyKprfJ8vr0I8ZoTeBpE2vpIAMhoIHEI5LpoNJn1HNW68DA8
 y1VvWY3JmIR+jQOrFqxuoZ6dyMNKbGQJzvNzXFEDt4lzMWR5x6eCKACTuxgYiro6iMA==
X-Gm-Gg: ASbGncsZ8P2AxTpPlkwvzSBCId48YWjK71K4X2QQg3tLSZlgd+7e/ODQ6voUITq99ny
 iXGQnGCxVNhorDJC7+8V3FpJLvKEbNOt9zEbQo8E4MVLyklSAKUGxx5BRMGq1d/klS+HoSD61Mc
 rlhLO/lQ5i5DuXfnygtubkQXtZESNNc2DrEYzRkUAetPU7uYk/rIXop7vkwCvTHr8Shu0wXGdVD
 OCF4U2wowFk0Sec9zW4VL7W9yaw14IZFs8GtkcAZ4pb+7ucABGH63QGP+1L9+c0CGS0/z+yqK+R
 5qdDKlpvVYDxaxhiF0N9NAAfhrUkfPY9b3GUi7YC47SJo4t2jwFv7rUDq+kX8WhZOi/jJtU=
X-Received: by 2002:a05:6000:2903:b0:39e:cbc7:ad33 with SMTP id
 ffacd0b85a97d-3a074e1eb67mr881029f8f.21.1745569045892; 
 Fri, 25 Apr 2025 01:17:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrgRXf9wKgkj7MYbnIuzIHmMlVWh7AZlbAu3PZR/ooKrImfXiUSMtbZSGOay0ZI4PJDGOvtg==
X-Received: by 2002:a05:6000:2903:b0:39e:cbc7:ad33 with SMTP id
 ffacd0b85a97d-3a074e1eb67mr880983f8f.21.1745569045483; 
 Fri, 25 Apr 2025 01:17:25 -0700 (PDT)
Received: from localhost
 (p200300cbc70f69006c5680f80c146d2a.dip0.t-ipconnect.de.
 [2003:cb:c70f:6900:6c56:80f8:c14:6d2a])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3a073c8ca72sm1597057f8f.4.2025.04.25.01.17.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Apr 2025 01:17:25 -0700 (PDT)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: linux-mm@kvack.org, x86@kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-trace-kernel@vger.kernel.org,
 David Hildenbrand <david@redhat.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Andy Lutomirski <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Andrew Morton <akpm@linux-foundation.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>,
 Pedro Falcato <pfalcato@suse.de>, Peter Xu <peterx@redhat.com>
Subject: [PATCH v1 03/11] x86/mm/pat: introduce pfnmap_track() and
 pfnmap_untrack()
Date: Fri, 25 Apr 2025 10:17:07 +0200
Message-ID: <20250425081715.1341199-4-david@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250425081715.1341199-1-david@redhat.com>
References: <20250425081715.1341199-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: S-D2XOtdIQWVAALrQfW_0ntt0D79jbkjt7-7vAzGd70_1745569046
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
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

Let's provide variants of track_pfn_remap() and untrack_pfn() that won't
mess with VMAs, to replace the existing interface step-by-step.

Add some documentation.

Signed-off-by: David Hildenbrand <david@redhat.com>
---
 arch/x86/mm/pat/memtype.c | 14 ++++++++++++++
 include/linux/pgtable.h   | 33 +++++++++++++++++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/arch/x86/mm/pat/memtype.c b/arch/x86/mm/pat/memtype.c
index 193e33251b18f..c011d8dd8f441 100644
--- a/arch/x86/mm/pat/memtype.c
+++ b/arch/x86/mm/pat/memtype.c
@@ -1068,6 +1068,20 @@ int pfnmap_sanitize_pgprot(unsigned long pfn, unsigned long size, pgprot_t *prot
 	return 0;
 }
 
+int pfnmap_track(unsigned long pfn, unsigned long size, pgprot_t *prot)
+{
+	const resource_size_t paddr = (resource_size_t)pfn << PAGE_SHIFT;
+
+	return reserve_pfn_range(paddr, size, prot, 0);
+}
+
+void pfnmap_untrack(unsigned long pfn, unsigned long size)
+{
+	const resource_size_t paddr = (resource_size_t)pfn << PAGE_SHIFT;
+
+	free_pfn_range(paddr, size);
+}
+
 /*
  * untrack_pfn is called while unmapping a pfnmap for a region.
  * untrack can be called for a specific region indicated by pfn and size or
diff --git a/include/linux/pgtable.h b/include/linux/pgtable.h
index 91aadfe2515a5..898a3ab195578 100644
--- a/include/linux/pgtable.h
+++ b/include/linux/pgtable.h
@@ -1506,6 +1506,16 @@ static inline int pfnmap_sanitize_pgprot(unsigned long pfn, unsigned long size,
 	return 0;
 }
 
+static inline int pfnmap_track(unsigned long pfn, unsigned long size,
+		pgprot_t *prot)
+{
+	return 0;
+}
+
+static inline void pfnmap_untrack(unsigned long pfn, unsigned long size)
+{
+}
+
 /*
  * track_pfn_copy is called when a VM_PFNMAP VMA is about to get the page
  * tables copied during copy_page_range(). Will store the pfn to be
@@ -1570,6 +1580,29 @@ extern int track_pfn_remap(struct vm_area_struct *vma, pgprot_t *prot,
  */
 int pfnmap_sanitize_pgprot(unsigned long pfn, unsigned long size,
 		pgprot_t *prot);
+
+/**
+ * pfnmap_track - track a pfn range
+ * @pfn: the start of the pfn range
+ * @size: the size of the pfn range
+ * @prot: the pgprot to track
+ *
+ * Tracking a pfnmap range involves conditionally reserving a pfn range and
+ * sanitizing the pgprot -- see pfnmap_sanitize_pgprot().
+ *
+ * Returns 0 on success and -EINVAL on error.
+ */
+int pfnmap_track(unsigned long pfn, unsigned long size, pgprot_t *prot);
+
+/**
+ * pfnmap_untrack - untrack a pfn range
+ * @pfn: the start of the pfn range
+ * @size: the size of the pfn range
+ *
+ * Untrack a pfn range previously tracked through pfnmap_track(), for example,
+ * un-doing any reservation.
+ */
+void pfnmap_untrack(unsigned long pfn, unsigned long size);
 extern int track_pfn_copy(struct vm_area_struct *dst_vma,
 		struct vm_area_struct *src_vma, unsigned long *pfn);
 extern void untrack_pfn_copy(struct vm_area_struct *dst_vma,
-- 
2.49.0

