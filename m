Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A621B303B1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:08:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F054510EA09;
	Thu, 21 Aug 2025 20:08:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="YrchmRgT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61E2110EA07
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1755806900;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5INZuVEW8ZoCVRVHt0CSLhpT4h786L9PUsnD4NVlnkc=;
 b=YrchmRgTkp/T/Ji2mPCA7onSMi7eLi/o4YCF4d9LsqJfEdLjzYJAyO+s145PGvQCbZirUI
 /PQ1+BEOB7JCaEwWDsPOC7nG+VtsOhvsVL20QogiCVnsbqa9hdR4Ia4EjaienvCqsMY4sZ
 +BGHIk1FGeIsHEcrPSm+YMQL99QITYQ=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-695-dM2Xj4TPP_u_1l4wBddD_g-1; Thu, 21 Aug 2025 16:08:18 -0400
X-MC-Unique: dM2Xj4TPP_u_1l4wBddD_g-1
X-Mimecast-MFC-AGG-ID: dM2Xj4TPP_u_1l4wBddD_g_1755806898
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-45a256a20fcso8254445e9.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:08:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755806897; x=1756411697;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5INZuVEW8ZoCVRVHt0CSLhpT4h786L9PUsnD4NVlnkc=;
 b=j4h6aS51egcqRKG0XMUV4arrlnDfjcN48qWS/WdQCSx7E3YMId06MbGs+4tYaanEtz
 EkPNurpk+Gyst38wRFMMqJb+onRpiY2vhEzfjSQgnYsgfIjAhN8gg2pcPBZmKDdht0vE
 q3aDY+Y8T99rUtSAyjVvAm+kpZbJ4vAg9nUkDMggqcEkubWpiP34e8wiNrLRt0WCL/8l
 VZ4qPgmUL7M/Fhi3sOqGvRHuwSRgod8Uvs4ZhWoSz+n0o6f7pIYEAZPYAzpGFf14nw48
 JbBeh5cBAwiqIYU4lUyyqW3o9NhjF1enQamVaF+jemW8PWta+QAfvfOlpVFEoeonNo+M
 iTow==
X-Forwarded-Encrypted: i=1;
 AJvYcCVcEHrfjEkQxObQVBuAmaysj+ykDCUkVBvZoYfW6+5prLmW0p/9HJQngSqBnrTnl7pTdloQzs7K/eE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzKdm5Xg2pSYEZg8E/8JQdJR/rNWqaiyT5mRPwsXhiqBLobt38Y
 27g7WTV//lug3RyzXkq8SllsjduhBf5NR081QN7QdrF+O0wIQG5l60xEcqaGZKIH2b4v4XiaciT
 ePo+CaWPp1ZcvR4mygXkbFQgc5lD71wICAl3wE6/CPczgvRWAqlPAyUtY5b/YknAx9UmK3A==
X-Gm-Gg: ASbGncsfK/dn4d8z0285Bgo56y7xVkFuy4CypQ3nDH37rV4GH3mBWveTYn/yLgeF+m6
 bfVnHjRu/PHDJ7rnv3+UVXZrR2jsClp8QKu/GdYNYI7oxsm5R5ZfyreuTk90ft7HJUorF8xwndV
 DFm6+Rr9auUzzugWyOAKjeaf7rilLYIyChlZ9r8r49/HTDGc4L4acxNt3uqoJl6YGNBUIJ0rns+
 CSnzyTbBC4B5gsyGa3IVLHaqcLanWKM9L5O5lZkT6dtnG9ucK4wYCrjpS5nYmuD2Biko1Ptx7DU
 v9kb6yOBQKfSfeg/4mzeJE2b0s4QuZJXiqYqZ0l+BS8b0amcPki8BDj8MmLd1uGwtiRzZQFXUhn
 XXqs6ezjE44+YAZPKbthRdQ==
X-Received: by 2002:a05:600c:470c:b0:456:285b:db29 with SMTP id
 5b1f17b1804b1-45b517d416bmr2506345e9.29.1755806897495; 
 Thu, 21 Aug 2025 13:08:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPdYXvWWhsiYzUao4v8GSpApokx2tOJxTxGWaryOs6bj53AmOc+7o5w7P2pIRGnKU6jzi+ow==
X-Received: by 2002:a05:600c:470c:b0:456:285b:db29 with SMTP id
 5b1f17b1804b1-45b517d416bmr2505625e9.29.1755806896948; 
 Thu, 21 Aug 2025 13:08:16 -0700 (PDT)
Received: from localhost
 (p200300d82f26ba0008036ec5991806fd.dip0.t-ipconnect.de.
 [2003:d8:2f26:ba00:803:6ec5:9918:6fd])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-45b50e3a551sm8831035e9.19.2025.08.21.13.08.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:08:16 -0700 (PDT)
From: David Hildenbrand <david@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: David Hildenbrand <david@redhat.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Alexander Potapenko <glider@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Brendan Jackman <jackmanb@google.com>, Christoph Lameter <cl@gentwo.org>,
 Dennis Zhou <dennis@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 iommu@lists.linux.dev, io-uring@vger.kernel.org,
 Jason Gunthorpe <jgg@nvidia.com>, Jens Axboe <axboe@kernel.dk>,
 Johannes Weiner <hannes@cmpxchg.org>, John Hubbard <jhubbard@nvidia.com>,
 kasan-dev@googlegroups.com, kvm@vger.kernel.org,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-arm-kernel@axis.com,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-ide@vger.kernel.org, linux-kselftest@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mmc@vger.kernel.org, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 Marco Elver <elver@google.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Michal Hocko <mhocko@suse.com>, Mike Rapoport <rppt@kernel.org>,
 Muchun Song <muchun.song@linux.dev>, netdev@vger.kernel.org,
 Oscar Salvador <osalvador@suse.de>, Peter Xu <peterx@redhat.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Suren Baghdasaryan <surenb@google.com>, Tejun Heo <tj@kernel.org>,
 virtualization@lists.linux.dev, Vlastimil Babka <vbabka@suse.cz>,
 wireguard@lists.zx2c4.com, x86@kernel.org, Zi Yan <ziy@nvidia.com>
Subject: [PATCH RFC 25/35] drm/i915/gem: drop nth_page() usage within SG entry
Date: Thu, 21 Aug 2025 22:06:51 +0200
Message-ID: <20250821200701.1329277-26-david@redhat.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250821200701.1329277-1-david@redhat.com>
References: <20250821200701.1329277-1-david@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: YhaEcEEGCuTpRMS7ZSzVEopkW1Pvs8iUlmYEuF7wG0o_1755806898
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

It's no longer required to use nth_page() when iterating pages within a
single SG entry, so let's drop the nth_page() usage.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: David Airlie <airlied@gmail.com>
Cc: Simona Vetter <simona@ffwll.ch>
Signed-off-by: David Hildenbrand <david@redhat.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_pages.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index c16a57160b262..031d7acc16142 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -779,7 +779,7 @@ __i915_gem_object_get_page(struct drm_i915_gem_object *obj, pgoff_t n)
 	GEM_BUG_ON(!i915_gem_object_has_struct_page(obj));
 
 	sg = i915_gem_object_get_sg(obj, n, &offset);
-	return nth_page(sg_page(sg), offset);
+	return sg_page(sg) + offset;
 }
 
 /* Like i915_gem_object_get_page(), but mark the returned page dirty */
-- 
2.50.1

